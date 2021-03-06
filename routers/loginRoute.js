'use strict';

const express = require('express');
const router = express.Router();

const controller = require('../controllers/loginController.js');

router.get('/login', controller.loginGet);
router.post('/login', controller.loginPost);

module.exports = router;