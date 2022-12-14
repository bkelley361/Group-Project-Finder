# Group-Project-Finder

Group Project App for CIS 350 at Grand Valley State University
<br>Created by: Ben Kelley, Blanca Gonzalez, and Kaitlynn Hudenko</br>

## Abstract

A common problem students face in class is finding partners for a class project. It can be awkward sometimes and difficult to find a group quickly. It is also impossible to learn about every student in the class in order to make an informed decision about which person would be the best choice for you to work with. It can also be disruptive to the learning environment if students are scrambling to find groups. We aim to fix this problem with our app, "APP NAME HERE". Users will be able to swipe through a list of other users in the same project. Using brief profiles a user can pick who they would prefer to work with and who they would prefer not to for a particular project. The app will then sort the results and make groups for the project. This app will make the process of finding a group easy and stress free. It will also help professors and project coordinators keep track of who is in what group.

## Introduction

Because forming groups for projects can be awkward and hard we have decided to build a mobile app to fix that. Everyone has a phone and with a minimal amount of clicks and swiping you can have a group formed before you even have to talk to anyone about it. This app will be based on iOS and Android using a combination of Flutter and Firebase so it will be available to everyone. Because we do not have as much time as we would like to develop this app we will only include the basics. Swiping, joining projects, creating projects, viewing all joined projects, and editing your profile. There will be a minimal amount of authentication involved, just something basic enough to store usernames. Hopefully with this project we can change the way students and workers create teams and start projects.

### Architecture

![Architecture](assets/images/Architecture.png)

### UML Diagrams

1. ![UML Class Diagram (1)](https://user-images.githubusercontent.com/112658136/206884412-24b10a29-f96f-43f4-836c-b88c5a240591.png)
2. ![Use Case Diagram (1)](https://user-images.githubusercontent.com/112658136/206884392-5350f6a7-27ed-48f4-b9bb-4bee110845c0.png)
3. ![Sequence Diagram pt 1 (1)](https://user-images.githubusercontent.com/112658136/206884366-84edca19-49f8-4530-9e96-994868006408.png)

### UI Designs

<table>
  <tr>
    <td><img width="147" alt="loginScreen (1)" src="https://user-images.githubusercontent.com/112658136/206884185-fd9b418d-b584-4043-b70d-a91feac6d441.png"></td>
    <td><img width="146" alt="registration (1)" src="https://user-images.githubusercontent.com/112658136/206884239-d3392bc3-e796-417e-902e-c34c41b04666.png"></td>
    <td><img width="145" alt="dashBoardScreen (1)" src="https://user-images.githubusercontent.com/112658136/206884242-3b99bcbe-7a22-4fb2-bf24-576fbbb7da38.png"</td>
  </tr>
  <tr>
    <td><img width="145" alt="editProfile (1)" src="https://user-images.githubusercontent.com/112658136/206884254-48809159-cc17-4e5c-a5b7-ba242832c09b.png"></td>
    <td><img width="145" alt="allChatPage (1)" src="https://user-images.githubusercontent.com/112658136/206884270-fc5f5187-cee2-49d4-932b-0dba89b94946.png"></td>
    <td><img width="147" alt="chatPage (1)" src="https://user-images.githubusercontent.com/112658136/206884272-fa7dc9ba-ae25-49fc-94ed-1829964f026f.png"></td>
  </tr>
</table>

### Links for project

1. Jira - https://groupprojectfinder.atlassian.net/jira/software/projects/GPF/boards/1
2. Flutter Documentation - https://docs.flutter.dev/get-started/install/windows

### Risk Analysis and Retrospective

1. What were the risks, what were the problems, how did you deal with them during the
project?

    i. The risks that we faced was that maybe one of our team members wouldn't get their work done on time and wasn't doing what corresponded to them.
We dealt with the problem by having constant communication among each other and if someone wasn't replying, use an alternative way of communication in case something happend.
We also took a security risk, since all of our passwords don't meet any of the general expectations of a password, and we dealt with it using firebase which is in house security, 
so all of the passwords are securely encripted and if we access the database we can't see them.

2. What was done and what could have been done better.

    i. We originally planned that we were going to have a feature called 'super like', which was generally saying that, that person really wanted to work with you, but we didn't get around to that.
The cards could have also been done nicer, less basic. Overall, everything could be slightly more polished since it's pretty basic.

### Demo Video

[Group Project Finder Demo](https://drive.google.com/file/d/14JNFFuBVWzcQpqTzpcX9BYAzcNVOsNKa/view?usp=sharing)
