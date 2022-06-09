*** Settings ***
Library    Selenium2Library
Library    OperatingSystem

*** Test Cases ***
Create File Grep Log
    Create File    ${CURDIR}/example.txt                              #สร้างไฟล์ชื่อ example.txt
    ${response} =    Grep File    ${CURDIR}/LogFile.txt    *ERROR*    #สร้างตัวแปร มาเพื่อ grep file เอาเฉพาะ แถวที่มีคำว่า *ERROR*
    Append To File    ${CURDIR}/example.txt    ${response}            #เอาไปเก็บไว้ในไฟล์ชื่อ example.txt
