input.onButtonPressed(Button.A, function () {
    neZha.setMotorSpeed(neZha.MotorList.M1, 100)
    neZha.setMotorSpeed(neZha.MotorList.M2, 100)
    neZha.setMotorSpeed(neZha.MotorList.M3, 100)
    neZha.setMotorSpeed(neZha.MotorList.M4, 100)
})
input.onButtonPressed(Button.B, function () {
    neZha.setServoAngel(neZha.ServoTypeList._180, neZha.ServoList.S1, 119)
    neZha.setServoSpeed(neZha.ServoList.S2, -58)
})
input.onButtonPressed(Button.AB, function () {
    neZha.stopAllMotor()
})
basic.forever(function () {
	
})
