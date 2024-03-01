### Code Book

#### Data Source

The dataset used for this project is the ["Human Activity Recognition Using Smartphones" dataset](https://archive.ics.uci.edu/dataset/240/human+activity+recognition+using+smartphones) from the UCI Machine Learning Repository.

#### Variables

-   **Subject:** An identifier for the subject who performed the activity. Integer values ranging from 1 to 30.

-   **Activity:** The type of activity performed by the subject. Factor variable with six levels: "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", and "LAYING".

-   **Other Variables:** These variables represent the mean and standard deviation of various features collected from the smartphone accelerometer and gyroscope sensors during the subjects' activities. For example, "tBodyAcc-mean()-X" represents the mean value of the body acceleration signal in the X-direction.

#### Transformations

1.  **Merge Training and Test Datasets:** The training and test datasets were merged to create one dataset.

2.  **Extract Relevant Features:** Only the measurements on the mean and standard deviation for each measurement were extracted from the dataset.

3.  **Descriptive Activity Names:** Descriptive activity names were used to label the activities in the dataset (e.g., "WALKING", "SITTING", etc.).

4.  **Label Variables:** Descriptive variable names were assigned to the dataset columns to improve readability and understanding.

5.  **Create Tidy Dataset:** A second, independent tidy dataset was created with the average of each variable for each activity and each subject.

#### Tidy Dataset

The tidy dataset contains the average of each variable for each activity and each subject. Each row in the dataset represents a unique combination of subject and activity, and each column represents a variable with the average value for that combination.

#### Additional Information

-   The dataset contains 10,299 instances.
-   The experiments involved 30 subjects aged 19-48 years.
-   The smartphone sensors captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.
-   The dataset does not contain missing values.

For more details, refer to the [README.txt](https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) file provided with the dataset.

For a video of the experiment and an example of the recorded activities, visit this [YouTube link](http://www.youtube.com/watch?v=XOEN9W05_4A).

An updated version of this dataset is available [here](http://archive.ics.uci.edu/ml/datasets/Smartphone-Based+Recognition+of+Human+Activities+and+Postural+Transitions), including labels of postural transitions between activities and full raw inertial signals.
