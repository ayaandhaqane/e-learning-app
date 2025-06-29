const mongoose = require('mongoose');

const courseSchema = new mongoose.Schema({
  title: {
    type: String,
    required: true,
    trim: true,
  },
  description: {
    type: String,
    required: true,
  },

  duration: {
    type: String,
    required: true,
  },
  price: {
    type: Number,
    required: true,
  },
  category: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'Category',  // Reference to the Category model
    required: true,
  },
  createdAt: {
    type: Date,
    default: Date.now,
  }
});

const Course = mongoose.model('Course', courseSchema);
module.exports = Course;