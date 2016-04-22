    require 'opencv'
    include OpenCV
class RecognitionController < ApplicationController
  def face
    
  end
  def photo


    data = '/usr/share/opencv/haarcascades/haarcascade_frontalface_alt.xml'
    detector = CvHaarClassifierCascade::load(data)
    image = CvMat.load(params[:photo_file].path) 
    detector.detect_objects(image).each do |region|
      color = CvColor::Blue
      image.rectangle! region.top_left, region.bottom_right, :color => color
  end

  image.save_image("output.jpg")
  send_file("output.jpg")
    
    
  end
end
