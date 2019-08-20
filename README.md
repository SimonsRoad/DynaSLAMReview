
# 动态场景下的SLAM相关技术总结报告

## 文章的基本内容
文章的基本内容可参照可变场景的SLAM提纲.pdf。我在这里简单列举各部分涉及的内容和参考文献。总共30-40页，每部分大概需要写至少5页。

### 1-1. 基于运动分割的SLAM技术
这类方法通过将画面中运动区域内的像素点或特征点去除来应对动态环境。这部分内容主要翻译参考文献中第三章即可。
- 参考文献 
> - M. Risqi, et al., Visual SLAM and Structure from Motion in Dynamic Environments: A Survey, ACM Computing Surveys, 2018.

- 主要内容
> - 参考文献中的3.1.1的初始化需要叙述清楚；3.1.4可扩展一些动态场景下的VIO求解算法； 3.1.5只有最后一段与运动分割相关。注意3.1.3中有邹丹平和章国峰的两个工作

### 1-2. 基于运动物体跟踪的SLAM技术
这类方法在1-1的基础上对各运动物体进行跟踪，通过时间上的连续性提升分割和定位在动态环境下的鲁棒性。这部分内容主要翻译第一条参考文献中第四章即可。
- 参考文献 
> - M. Risqi, et al., [Visual SLAM and Structure from Motion in Dynamic Environments: A Survey](https://www.cs.ox.ac.uk/files/9926/Visual%20Slam.pdf), ACM Computing Surveys, 2018.
> - A. Byravan, et al, SE3-Nets: Learning Rigid Body Motion Using Deep Neural Networks, ICRA, 2017
> - S. Vijayanarasimhan, et al, SfM-Net: Learning of Structure and Motion from Video, arXiv, 2017

- 主要内容
> - 这部分的内容分为两块，一块是物体级的分割（包括聚类和不停地进行RANSAC的基于统计的方式），一块是对已分割区域进行跟踪（类似于SLAM，包括基于滤波和基于三角化的方式）
> - 4.1.1和4.1.2的方法大致思路讲清楚，涉及到具体的公式如果不太明白可以篇幅少一些。我的理解4.1.1就是迭代做RANSAC一类的，4.1.2就是类似于PCA找多个成分的方法，4.1.3和后面multi-body SfM类似不用写，4.1.4 深度学习的方法可以找框图扩充一下，这两个网络比较简单，包括上次老乔和李顺恺读的CVPR 2019的两篇论文也是类似的把背景和前景拆分开的思路
> - 4.2.1和4.2.2其实就是把SLAM解决完全刚体的情况扩展成多个刚体来做，这里要写清楚tracking建立了各个运动物体的temporal consistency，可以提高分割和定位的鲁棒性，这部分写一页半左右就差不多

### 1-3. 非刚体和多刚体运动下的SfM技术
这类方法将静态SfM扩展为多个刚体(或者多个刚体运动下的控制点)的SfM问题进行求解。这部分内容主要翻译参考文献中第五章即可。
- 参考文献 
> - M. Risqi, et al., Visual SLAM and Structure from Motion in Dynamic Environments: A Survey, ACM Computing Surveys, 2018.

- 主要内容
> - 这部分主要就是讲SfM的factorization怎么扩展到多个刚体运动物体或非刚体（多个刚体运动的控制点）上

### 2-1. 动态环境下静态部分地图的构建
这类方法和1-1相似，在地图中只保留静态的部分，剔除动态的物体。这部分内容需要整合参考文献related work的内容，并对高频出现的文献进行归纳（概括Introduction即可）
- 参考文献 
> - Berta Bescos, et al., DynaSLAM: Tracking, Mapping and Inpainting in Dynamic Scenes, RA-L 2018. 相关文章比较丰富
> - R. Scona, et al., StaticFusion: Background reconstruction for dense RGB-D SLAM in dynamic environments, ICRA 2018. 可以着重展开
> - Y. Liu, et al., 3D Scanning of High Dynamic Scenes Using an RGB-D Sensor and an IMU on a Mobile Device, IEEE Access. 有一些related work的补充

- 主要内容
> - 这部分主要就是把运动区域剔除之后进行融合。为了和1-1区分开，这里侧重地图带来的先验和分割过程中存在的时间连续性约束

### 2-2. 静态背景和动态物体的同时重建
这类方法和1-2相似，同时维护静态和动态的地图，多为object SLAM在动态环境下的扩展。这部分内容需要整合参考文献related work的内容，并对高频出现的文献进行归纳（概括Introduction即可）
- 参考文献 
> - B. Xu, et al., MID-Fusion: Octree-based Object-Level Multi-Instance Dynamic SLAM, ICRA, 2019.
> - M. Runz, et al., MaskFusion: Real-Time Recognition, Tracking and Reconstruction of Multiple Moving Objects, ISMAR 2018. Related Work - Dynamic SLAM这一小节
> - M. Runz, et al., Co-fusion: Real-time Segmentation, Tracking and Fusion of Multiple Objects, ICRA 2017. 有一些其它的算法
> - H. Zhang and F. Xu, MixedFusion: Real-Time Reconstruction of an Indoor Scene with Dynamic Objects, TVCG 2017.
> - S. Caccamo et al., Joint 3D Reconstruction of a Static Scene and Moving Objects, 3DV 2017. object SLAM相关

- 主要内容
> - 这部分就是将多物体和背景区域分别进行融合。这里可以突出物体识别和fusion的结合，也从地图的角度入手

### 2-3. 四维地图构建与长时定位
这类方法维护时空上完整的地图变化情况。这部分内容需要整合参考文献related work的内容，并对高频出现的文献进行归纳（概括Introduction即可）
- 参考文献 
> - M. Lee and C. Fowlkes, Space-Time Localization and Mapping, ICCV 2017. Related Work - Dynamic Scenes and 4D Maps这部分
> - R. Ambrus, et al., Meta-rooms : Building and Maintaining Long Term Spatial Models in a Dynamic World, IROS 2014.
> - M. Fehr, et al., TSDF-based Change Detection for Consistent Long-Term Dense Reconstruction and Dynamic Object Discovery, ICRA 2017.
> - T. Krajnik, et al., Life-Long Spatio-temporal Exploration of Dynamic Environments, ECMR 2015.
> - G. D. Tipaldi, et al., Lifelong Localization in Changing Environments, IJRR 2013.

- 主要内容
> - 这部分主要是突破static world的假设，获得了一个统一的空间表示形式

## Latex写作相关信息
Latex的一些基本的图表命令已经在example.tex内写好，编译后可对应pdf的显示内容进行参考。

### 文章结构
按照之前整理的提纲，文章分文两个section，每个section下各有三个subsection。大家只需要在srcs文件夹下找到自己对应的subsection的.tex进行编写，再在report.tex下用XeLaTeX编译即可查看（编译方式在tex已经写好，应该不需要特别设置，直接编译即可生成pdf）

### 注释内容
在写作过程中如果存在不太明确和需要补充的地方可以添加注释在文中。
在begin{document}上方，我创建了newcommand用来注释。大家可以参考注释测试部分的代码，替换自己note下大括号内的内容即可。在预览时可通过将\setmode{draft}替换为\setmode{final}即可隐藏注释部分生成pdf。

### 标签和 引用规范
设定标签: 
>设定标签：\label{...}
>引用标签：\ref{...}

|公式|图片|表格|章|
|---|---|---|---|
|eq:|fig:|tab:|sec:|

子模块在前方加入sub,比如子图label为**subfig:**

**需要注意的是，图片的caption在所有图片includegraphics之后再写caption，而表格则是先写caption再添加表格。caption最后需要加上句号，公式后面也需要加上逗号或句号。**
