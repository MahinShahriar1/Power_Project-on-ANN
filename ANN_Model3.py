# Artificial Neural Network

# Importing the libraries
import csv
import numpy as np
import pandas as pd
import tensorflow as tf
import matplotlib.pyplot as plt


# Part 1 - Data Preprocessing

# Importing the dataset
dataset = pd.read_csv("D:\Matlab Programing\Thesis\DataPreprocessed2.csv")
X = dataset.iloc[:, 2:18].values
y1 = dataset.iloc[:, 13].values


# Splitting the dataset into the Training set and Test set
from sklearn.model_selection import train_test_split
X_train, X_test, y1_train, y1_test = train_test_split(X, y1, test_size=0.2, random_state=0)


# Part 2 - Building the ANN

ann = tf.keras.models.Sequential()
# Adding the input layer and the first hidden layer
ann.add(tf.keras.layers.Dense(units=9, activation='relu'))
# Adding the second hidden layer
ann.add(tf.keras.layers.Dense(units=9, activation='relu'))

# Adding the output layer
ann.add(tf.keras.layers.Dense(units=1, activation='sigmoid'))

# Part 3 - Training the ANN
# Compiling the ANN
ann.compile(optimizer='adam',  loss=tf.keras.losses.MeanAbsoluteError(), metrics=[tf.keras.metrics.AUC(from_logits=True)])

# Training the ANN on the Training set
ann.fit(X_train, y1_train, batch_size=32, epochs=100)

# Part 4 - Making the predictions and evaluating the model

# Predicting the Test set results
y1_pred = ann.predict(X_test)


cutoff = 0.7
y1_pred_classes = np.zeros_like(y1_pred)

y1_pred_classes[y1_pred > cutoff] = 1


y1_test_classes = np.zeros_like(y1_pred)

y1_test_classes[y1_test > cutoff] = 1


# # Making the Confusion Matrix
from sklearn import metrics
p1 = metrics.accuracy_score(y1_test_classes, y1_pred_classes)
print(f'The accuracy of the prediction is {p1}')

# p2 = metrics.accuracy_score(y2_test_classes, y2_pred_classes)
# print(f'The accuracy of the prediction is {p2}')
# confusion_matrix = metrics.confusion_matrix(y1_test_classes, y1_pred_classes)
# cm_display = metrics.ConfusionMatrixDisplay(confusion_matrix=confusion_matrix, display_labels=[False, True])
# cm_display.plot()
# plt.show()

# importing to csv file
df = pd.read_csv('Predicted.csv')
df['Ans_Load_MW'] = y1_test
df.to_csv('Predicted.csv', index=False)
df = pd.read_csv('Predicted.csv')
df['Ans_Load_MW_Pred'] = y1_pred
df.to_csv('Predicted.csv', index=False)
df = pd.read_csv('Predicted.csv')
df['Ans_Load_MW_Pred_Error'] = df['Ans_Load_MW'] - df['Ans_Load_MW_Pred']
df.to_csv('Predicted.csv', index=False)
