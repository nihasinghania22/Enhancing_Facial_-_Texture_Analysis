% Define the path to the video file
videoFile = "C:\Users\nihas\Desktop\Research Work - Image Processing\Media_content_of_HCI_files\Sessions\1\P1-Rec1-2009.07.09.17.53.46_BW2 _BW_Section_1.avi"

% Create a VideoReader object
vidObj = VideoReader(videoFile);

% Create a directory to save frames
outputFolder = 'extracted_frames';
if ~exist(outputFolder, 'dir')
    mkdir(outputFolder);
end

% Read and save each frame
frameCount = 0;
while hasFrame(vidObj)
    frameCount = frameCount + 1;
    frame = readFrame(vidObj);
    
    % Define the filename for the frame
    filename = sprintf('frame_%04d.jpg', frameCount);
    filepath = fullfile(outputFolder, filename);
    
    % Write the frame to the output folder
    imwrite(frame, filepath);
end

disp(['Frames extracted: ', num2str(frameCount)]);
