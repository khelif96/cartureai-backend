/* jshint esversion: 6 */

exports.getApi = (req, res) => {
    res.json({message: "Welcome to the cartureAI API"});
    res.status(200);
  };

exports.invalidPath = (req,res) => {
  res.status(404).json({success: false, message: "Invalid Path"});
}
