const mysql = require('mysql');
const inquirer = require('inquirer');
const Choices = require('inquirer/lib/objects/choices');

const connection = mysql.createConnection({})
const questions = {}

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