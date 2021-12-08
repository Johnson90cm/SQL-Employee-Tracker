const mysql = require('mysql');
const inquirer = require('inquirer');
const Choices = require('inquirer/lib/objects/choices');

const connection = mysql.createConnection({
    host: 'localhost',

    port: 3001,

    user: 'root',

    password: 'johnson90',

    database: 'employees'
});

const questions = {
    viewEmployees: "View Employees",
    viewDepartments: "View By Department",
    viewByManager: "View By Manager",
    addEmployee: "Add Employee",
    removeEmployee: "Remove Employee",
    changeRole: "Change Roles",
    viewRoles: "View Roles",
    exit: "Exit"
};

function prompt() {
    inquirer
        .prompt({
            name: 'action',
            type: 'list',
            message: 'Select an Action',
            choices: [

            ]
        })
        .then(answer => {

        })
}


function createName() { }

function addEmployee() { }

function removeEmployee() { }

function changeRole() { }

function viewDepartments() { }

function viewRoles() { }

function viewByManager() { }