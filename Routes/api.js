/* jshint esversion :6 */

const express = require('express');
const router = express.Router();

const apiHome = require('../Controllers/apiHome');

router.get('/', apiHome.getApi);

router.use(apiHome.invalidPath);
module.exports = router;
