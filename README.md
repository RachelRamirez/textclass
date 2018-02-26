textclass
================
Charter Sevier

[![Build Status](https://travis-ci.org/hadley/devtools.svg?branch=master)](https://travis-ci.org/williamcsevier/TextML)

This package provides a tool to simply automate text analytics in interpretable graphical output.

Description
-----------

The package will be able to accept .csv files containing text data and perform various text analysis procedures, with options to return the raw data for further manipulation, or ggplot graphics of the text analysis methods. This allows the user to easily analyze their text data without having to do any of the required preprocessing. In addition, even the most novice of data scientists can portray their text analysis results cleanly, with limited knowledge of R.

Specifically, this package will give the user options to output most frequent terms, n-gram analysis, and topic modeling analysis. Topic modeling involved allowing the user to determine how many topics with which to model their topics, and output the most associated terms with each topics, as well word-word correlation, and document-topic association.

End-user
--------

The typical end user for whom this analytic is being developed would be anyone who wishes to easily present their text data in an interpretable fashion, with limited required understanding of how text analytics operates. However, this tool could be equally as useful to a seasoned data scientist, who wishes to quickly accomplish exploratory analysis of text data, while also extracting useful raw data for follow-on text analysis outside of the scope of this tool.

Prerequisite Knowledge
----------------------

The end-user will have to know how import a .csv file into R as a dataframe and how to install and load an R package through CRAN and github. The package will output default products (term frequency, n-gram analysis) without user specified parameters, but a user with more knowledge of text analysis could choose specific parameters for their output and increase the number of generated analysis products from their text data.

Term Dictionary
---------------

Term Frequency: The frequency of terms throughout the corpus (collection of words)

Term Frequency – Inverse Document Frequency (tf-idf): The frequency of terms in the a document relative to how many documents the word is present.

Latent Dirichlet Allocation (LDA): Algorithm for topic modeling. It is the method for estimating bother the mixture of topics in a document, and the mixture of words in a topic simultaneously. The following variables are generated by the LDA model:

        Beta: per-topic-per-word probability
        
        Gamma: per-document-per-topic proability

Existing R-Packages required
----------------------------

This analytic utilizes the tidytext package for tidy-form representation of LDA model outputs.

How to access package?
----------------------

The end-user will access TextML through github using devtools. williamcsevier/TextML

There are no security concerns

The package will use ggplot2 package for graphical output.

<table style="width:100%;">
<colgroup>
<col width="4%" />
<col width="2%" />
<col width="2%" />
<col width="19%" />
<col width="25%" />
<col width="16%" />
<col width="20%" />
<col width="3%" />
<col width="4%" />
</colgroup>
<thead>
<tr class="header">
<th align="center">Description</th>
<th align="center">Priority</th>
<th align="center">Status</th>
<th align="center">Value</th>
<th align="center">Inputs</th>
<th align="center">Outputs</th>
<th align="center">Application</th>
<th align="center">Achievable?</th>
<th align="center">Current Version?</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="center">Term Frequency</td>
<td align="center">1</td>
<td align="center">in-work</td>
<td align="center">Provides Most/Least Frequent Terms</td>
<td align="center">Text dataframe, most frequent (T or F), and top number of terms portrayed</td>
<td align="center">Ggplot bar plot of terms and their frequencies</td>
<td align="center">Analysis of most frequent terms in corpus</td>
<td align="center">Yes</td>
<td align="center">Yes</td>
</tr>
<tr class="even">
<td align="center">n-gram Analysis</td>
<td align="center">2</td>
<td align="center">in-work</td>
<td align="center">Provides most least frequent n-grams</td>
<td align="center">Number of n-grams to be portrayed, and,the value of n (number of word pairs)</td>
<td align="center">Ggplot bar plot of n-grams and their frequencies</td>
<td align="center">Analysis of frequencies in which words are used in conjunction.</td>
<td align="center">Yes</td>
<td align="center">Yes</td>
</tr>
<tr class="odd">
<td align="center">Topic Modeling</td>
<td align="center">3</td>
<td align="center">in-work</td>
<td align="center">Provides modeled topics based on LDA model for user-specified number of topics.</td>
<td align="center">The number of topics the user wishes to,model. As well as how many of the most associated words to portray</td>
<td align="center">Facet ggplot of the most associated,words with each of the topics.</td>
<td align="center">Facilitate interpretation of the modeled topics based on their most associated words.</td>
<td align="center">Yes</td>
<td align="center">Yes</td>
</tr>
</tbody>
</table>