import asyncio
import os
import shutil
import sys

async def test_mkc():
    print("Testing mkc execution...")
    
    # 1. Check Path
    mkc_path = shutil.which("mkc")
    print(f"shutil.which('mkc') -> {mkc_path}")
    
    if not mkc_path:
        print("mkc not found!")
        return

    # 2. Check Environment
    env = os.environ.copy()
    print(f"PATH size: {len(env['PATH'])}")

    # 3. Try execution similar to App
    cmd = [mkc_path, "build"]
    cwd = os.getcwd()
    print(f"Running: {cmd} in {cwd}")

    try:
        proc = await asyncio.create_subprocess_exec(
            *cmd,
            stdout=asyncio.subprocess.PIPE,
            stderr=asyncio.subprocess.STDOUT,
            cwd=cwd,
            env=env
        )

        while True:
            line = await proc.stdout.readline()
            if not line:
                break
            print(f"OUTPUT: {line.decode().strip()}")
            
        rc = await proc.wait()
        print(f"Return Code: {rc}")
        
    except Exception as e:
        print(f"Exception: {e}")

if __name__ == "__main__":
    if sys.platform == 'win32':
        asyncio.set_event_loop_policy(asyncio.WindowsProactorEventLoopPolicy())
    asyncio.run(test_mkc())
