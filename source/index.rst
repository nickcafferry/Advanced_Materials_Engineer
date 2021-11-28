|Documentation Status| |MIT License| |Huawei Clodu| |TensorFlow| |Python version| |today| 

-------------------

.. |Documentation Status| image:: https://readthedocs.org/projects/tensorflow-ml/badge/?version=latest
   :target: https://advanced-materials-engineer.readthedocs.io/en/latest/
.. |MIT License| image:: https://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat
   :target: http://choosealicense.com/licenses/mit/
.. |Python version| image:: https://img.shields.io/badge/python-3.7,%203.8-blue.svg
   :target: https://www.python.org/
.. |Huawei Clodu| image:: https://img.shields.io/badge/platform-huawei%20cloud-blue
   :target: https://auth.huaweicloud.com/authui/login.html?service=https%3A%2F%2Fconsole.huaweicloud.com%2Fconsole%2F%3Flocale%3Dzh-cn#/login
.. |TensorFlow| image:: https://img.shields.io/badge/tensorflow-2.2-brightgreen.svg
   :target: https://github.com/tensorflow/tensorflow

Copyright |copy| Wei MEI, |MLMS (TM)| |---|
all rights reserved. 
|bamboo|

.. |copy| unicode:: 0xA9 .. copyright sign
.. |MLMS (TM)| unicode:: MLMS U+2122
   .. with trademark sign
.. |---| unicode:: U+02014 .. em dash
   :trim:

.. |bamboo| unicode:: 0x1F024 .. bamboo

Analytical Assessment of e-Cigarettes (version : |version|)
============================

Cigarette smoking has had a devastating effect on public health world-wide over the past 100 years and will continue to do so throughout the current century unless there is a substantial reduction in the prevalence of smoking. Compulsive smoking is driven by addiction to nicotine, but most of the harm from smoking is caused by exposure to tobacco
combustion products. For many years, tobacco researchers and policy experts have entertained the idea that a clean source of nicotine that could be inhaled and provide similar rewarding effects as a cigarette might entice smokers away from cigarette smoking and lead either to quitting smoking or to long-term nicotine use without incurring the harm from tobacco combustion toxicants.

e-Cigarettes are nicotine delivery devices that deliver nicotine without combusting tobacco. These are battery-powered devices that heat a liquid composed of propylene glycol and/or vegetable glycerin, nicotine, and flavoring to form a vapor which rapidly aerosolizes and is inhaled like cigarette smoke. e-Cigarettes could be beneficial to public
health if they help smokers quit smoking and possibly (at least for some health effects) reduce harm for those who smoke fewer cigarettes while using e-Cigarettes. On the other hand, there are several concerns about adverse effects of e-Cigarette use on a population level, including attracting youth and serving as a gateway to nicotine addiction
and cigarette smoking, dual use with cigarettes resulting in lower rates of quitting smoking, renormalizing nicotine use and undermining smoke-free air legislation, and/or diverting smokers from proven smoking cessation treatment sessions.

One of the determinants of the net effect of e-Cigarettes on public health is the benefit versus harms, including the direct toxicity of e-Cigarette use. Assessing the toxicity of e-Cigarettes requires an understanding of the design and variability in device components and constituents of e-liquids and aerosols, both chemicals and particulates. Biomarkers of exposure to e-Cigarette toxicants in people are critical for extrapolating machine-tested e-Cigarette emission findings to actual human exposures.

.. important::

   - :ref:`Chapter 1: Introduction to e-Cigarettes <label1>`, e-Cigarettes were recently invented and developed as an alternative-to-smoking method of nicotine intake. They are electronic devices with three main parts: a battery, an atomizer composed of a wick and metal coil, and a liquid (“e-liquid”) stored inside the atomizer. The function is to aerosolize the liquid, producing a visible aerosol which the user inhales. This is achieved by heating the metal coil inside the atomizer by an electrical current from the battery. e-Cigarettes are commonly called electronic nicotine-delivery devices (ENDS). However, because they can be used with non-nicotine e-liquids, the term ENDS is inaccu- rate and does not represent the whole spectrum of e-Cigarette devices and use patterns.
   
   - :ref:`Chapter 2: Analytical Testing of e-Cigarette Aerosol <label2>`, In the preparation of this chapter, the author read approximately 150 peer-reviewed publications and a large number of recent conference proceedings. Two things became apparent: (1) :strong:`electronic nictine delivery systems (ENDS) are evolving rapidly as manufacturers innovate, and the peer-reviewed literature does not adequately reflect products on th market.` ``Solution``:  The recent conference proceedings are cited to fill gaps in the literature (2) :strong:`Published findings of analytical testing and analysis of ENDS tend to show thermal decomposition products at either very low or very high levels, with little agreement in the middle.`  ``Solution``: This issue can be only addressed only when required to highlight differences in testing methodologies.
   
   - :ref:`Chapter 3: Exposures to e-Cigarette Vapor <label3>`, This chapter presents a review of published data and new data collected by RTI International to provide the reader a perspective on :strong:`the sources and external factors that influence the magnitude of exposure to e-Cigarette vapor. ` The authour reviewed over 100 published articles from the e-Cigarette, conventional cigarette, and aerosol science fields. Articles were selected that have data to help advance our understanding of :strong:`user`, :strong:`secondary`, :strong:`tertiary exposures`. Vapors includes both the particles and gases produced by an e-Cigarette. Particles and aerosols are used synonymously following the definition by Hinds: "An aerosol is defined in its simplest form as a collection of solid or liquid particles in a gas."
   
   - :ref:`Chapter 4: Biomarkers for Assessment of Chemical Exposures From e-Cigarette Emissions <label4>`, A workshop held by the U.S. National Institutes of Health entitled "NIH Electronic Cigarette Workshop: Developing a Research Agenda" concluded that :strong:`"studies on the acute use of e-Cigarette will require urine or plasma biomarkers that can provide an objective indicator of dose"`. Biomarkers of exposure, which are usually metabolites of specific toxicants or carcinogens, have the advantage of bypassing many of the uncertanties associated with measurment of emissions from a given tobacco or e-Cigarette product. These uncertainties arise from the use of artificial smoking conditions that might not accurately reflect the ways in which humans actually use the products in question. Thus ``urine``, ``plasma``, ``salivary``, and ``breath`` biomarkers, which in most cases are quantifiable metabolites of specific tobacco smoke or e-Cigarette emission constituents, can provide objective and useful information on actual human exposure to specific toxicants or carcinogens. This chatper will review some biomarkers of exposure which have been widely used to monitor human uptake of tobacco smoke constituents and will then present data on the application of these biomarkers in studies of e-Cigarette users.
   
   - :ref:`Chapter 5: Review of Compounds of Regulatory Concern`, As with any consumer product, regulation for e-Cigarette is important in order to ensure the best possible quality, safety, consistency in product standards and contents, and effectiveness for the intended use. However, the issue of e-Cigarette regulation is more complex than for other other consumer products. e-Cigarette use is associated with :emphasis:`the intake of an addictive substance, nicotine`. Also, the pattern of use closely resembles the act of smoking, and the intended use from a public health perspective is as a smoking substitute and not as a new "trend" or habit. As a result, the regulatory assessment of e-Cigarette is much more complex and challenging in terms of their content and emissions as well as promotion, marketing, and related public perception of the product. It is tempting to regulate e-Cigarettes based on absolute safety and using the precautionary prinicple. That would minimize the risk of avoidable harm, related to exposure to toxins in e-Cigarette, renormalization, gateway progression to smoking, or other real or potential risks. However, if this approach also makes e-Cigarettes less easily accessible, less palatable or acceptable, more expensive, less consumer friendly or or pharmacologically less effective for smokers, or if it inhibits innovation and development of new and improved products, then it causes harm by perpetuating smoking. Getting this balance right will be a challenging process.
   
   - :ref:`Chapter 6: Potential Impact of e-Cigarette Usage <label6>`, Cigarette smoke contains more than 7000 chemicals, many of which are known to be harmful to the human body, thus causing a broad range of fatal diseases. Death is mainly from ischemic heart disease, stroke, lung cancer, and the catastrophic complications of advanced- stage chronic obstructive pulmonary disease (COPD). Abstention from smoking is known to lower the risk of developing these diseases and to produce significant health gains in patients who already have them. Most smokers want to quit and many make attempts to do so, but most of these attempts fail largely because of the powerful addictive qualities of nicotine and nonnicotine sensory and behavioral cues. For those willing to quit, a combination of pharmacotherapy and behavioral intervention can support attempts and double or triple the quit rate. However, outside the context of rigorous randomized controlled trials (RCTs), efficacy rates are disappointingly low, with an estimated annual population cessation rate of approximately (cid:1)5%.(cid:1)
   
-------------


Content
=======

.. raw:: html
   :file: nicotine.html

.. _label1:
.. toctree::
   :maxdepth: 5
   :caption: Chapter 1: Introduction to EC
   
   01/Chapter_1_Introduction_to_e_Cigarettes

.. _label2:
.. toctree::
   :maxdepth: 5
   :caption: Chapter 2: Analytical Testing of EC Aerosol
   
   02/Chapter_2_Analytical_Testing_of_e_Cigarette_Aerosol

.. _label3:
.. toctree::
   :maxdepth: 5
   :caption: Chapter 3: Exposures to EC Vapor
   
   03/Chapter_3_Exposures_to_e-Cigarette_Vapor

.. _label4:
.. toctree::
   :maxdepth: 5
   :caption: Chapter 4: Biomarkers for Assessment
   
   04/Chapter_4_Biomarkers_for_Assessment

.. _label5:
.. toctree::
   :maxdepth: 5
   :caption: Chapter 5: Review of Compounds of Regulatory Concern
   
   05/Chapter_5_Review_of_Compounds_of_Regulatory_Concern

.. _label6:
.. toctree::
   :maxdepth: 5
   :caption: Chapter 6: Potential Impact of e-Cigarette Usage
   
   06/Chapter_6_Potential_Impact_of_e-Cigarette_Usage

Heating Technology
------------------
.. raw:: html
   :file: Purlava_Particle.html
   
   
License
==============

MIT Licence, Please refer to `MIT LICENSE <https://github.com/nickcafferry/Advanced_Materials_Engineer/blob/master/LICENSE>`_

