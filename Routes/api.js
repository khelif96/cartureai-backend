/* jshint esversion :6 */

const express = require('express');
const router = express.Router();

const apiHome = require('../Controllers/apiHome');
const carData = require('../Controllers/carData');
const s3Upload = require('../Controllers/s3Upload');

router.get('/', apiHome.getApi);

// router.get('/parseCarStats', carData.parseCarStats);

router.post('/sign_s3', s3Upload.sign_s3 );
router.use(apiHome.invalidPath);
module.exports = router;
