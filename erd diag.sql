CREATE TABLE Users (
    UserID INT PRIMARY KEY,  -- Unique identifier for each user
    Username VARCHAR(50) UNIQUE,  -- Username must be unique
    Full_Name VARCHAR(100),  -- User’s full name
    Email VARCHAR(100),  -- User’s email address
    Bio TEXT  -- User’s bio information
);


CREATE TABLE Posts (
    PostID INT PRIMARY KEY,  -- Unique identifier for each post
    UserID INT,  -- Foreign key linking the post to a user
    Caption TEXT,  -- The caption of the post
    Image_URL VARCHAR(255),  -- URL of the image posted
    Likes_Count INT DEFAULT 0,  -- Number of likes (default is 0)
    Comments_Count INT DEFAULT 0,  -- Number of comments (default is 0)
    Post_Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Timestamp of post creation
    FOREIGN KEY (UserID) REFERENCES Users(UserID)  -- Links to Users table
);


CREATE TABLE Comments (
    CommentID INT PRIMARY KEY,  -- Unique identifier for each comment
    PostID INT,  -- Foreign key linking to the post
    UserID INT,  -- Foreign key linking to the user who commented
    Content TEXT,  -- The comment text
    Comment_Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Timestamp of the comment
    FOREIGN KEY (PostID) REFERENCES Posts(PostID),  -- Links to Posts table
    FOREIGN KEY (UserID) REFERENCES Users(UserID)  -- Links to Users table
);


CREATE TABLE Follows (
    FollowerID INT,  -- User who is following
    FollowingID INT,  -- User being followed
    Follow_Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Timestamp of follow action
    PRIMARY KEY (FollowerID, FollowingID),  -- Composite Primary Key
    FOREIGN KEY (FollowerID) REFERENCES Users(UserID),  -- Links to Users table
    FOREIGN KEY (FollowingID) REFERENCES Users(UserID)  -- Links to Users table
);

