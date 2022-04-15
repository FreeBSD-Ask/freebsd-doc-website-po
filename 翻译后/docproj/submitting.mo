��          �   %   �      p     q  -   �  )   �  <   �  �   $  0   �  h  �  0   Q  7   �     �  I   �  6     �   K  R     $  ^  (   �  �   �  �   =	  "   �	  [   �	     T
  {   r
  A  �
  1  0  f   b  ,   �  D   �  $  ;     `  -   ~  )   �  P   �  r   '  *   �  3  �  -   �  "   '     J  6   Z  0   �  �   �  N   x  �   �  *   �  �   �  �   a     �  O   	  $   Y  f   ~  .  �      ]   &  .   �  4   �        
                                                       	                                                                % cp foo.xml foo.xml.old
     % diff -u foo.xml.old foo.xml > foo.diff
     % vi foo.xml
    ... tap tap tap ...
     ... test the changes, read them for typos and so on ...
 After people have looked over your documentation, and you have had the chance to incorporate any of their suggestions, you are ready to submit it. Again, thank you for taking the time to do this. First off, you need to produce a special file called a _diff_. This diff shows just the changes that you have made. This makes it easier for the person doing the committing to see what you have changed, and means you do not need to spend lots of time explaining what you have changed (although you should still explain why you think the change should be made). First, thank you for taking the time to do this. FreeBSD Documentation Project: Submitting documentation Further reading I have made some changes to existing documentation, how do I submit them? I have written some documentation. How do I submit it? If, for some reason, you cannot put the documentation on a website somewhere you can send it directly to the `FreeBSD-doc` mailing list. If you do this, please only send plain-text documents. Make a copy of the file you are going to change. If you are changing `foo.xml`, do Make sure the "Product" is set to "Documentation" and that the "Component" is set to either "Documentation" or "Website" as appropriate. You should attach your files from earlier to the PR. Please also provide links to the mailing list posts where your changes were discussed, if appropriate. Make the diff. The command to do this is The correct way to do this is to open a Problem Report. Instructions for doing this can be found at link:../../support/bugreports/[Bug Reports]. Then post a message to the `FreeBSD-doc` mailing list, with a brief outline of the documentation and the pointer to its location, and solicit feedback. Then, make your changes to foo.xml This looks at the difference between the two files, and writes them to the file `foo.diff`. To make a 'diff', you should; You can then send `foo.diff` back to the project. Send a PR as described earlier, and attach the `foo.diff` file to the PR. You do this so that your submission can be tracked. When you submit a PR (Problem Report) it is assigned a unique number. One of the committers can then assign the PR to themselves, and liaise with you on committing the new documentation. For more information, see link:{problem-reports}[Writing FreeBSD Problem Reports]. You may wish to cc: this request for comments to another appropriate mailing list. For example, something that relates to how to use Subversion to keep your source tree up to date would be of interest to the subscribers of the `FreeBSD-stable` mailing list. Please only cc: at most one other mailing list. You should make your documentation available for review. If you can, upload it to a website somewhere. link:../[FreeBSD Documentation Project Home] link:{fdp-primer}[Documentation Project Primer for New Contributors] Project-Id-Version: FreeBSD Documentation VERSION
PO-Revision-Date: 2022-04-14 22:56+0800
Last-Translator: 
Language-Team: 
Language: zh_CN
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Generator: Poedit 3.0.1
     % cp foo.xml foo.xml.old
     % diff -u foo.xml.old foo.xml > foo.diff
     % vi foo.xml
    ... tap tap tap ...
     ......测试这些变化，阅读它们是否有错别字，等等......。
 在人们看完你的文件，并且你有机会采纳他们的任何建议之后，你就可以提交文件了。 再次感谢你花时间来做这件事。 首先，你需要制作一个叫做_diff_的特殊文件。这个diff文件只显示你所做的修改。这使得做提交的人更容易看到你所做的修改，也意味着你不需要花很多时间来解释你所做的修改（尽管你仍然应该解释为什么你认为应该做这个修改）。 首先，感谢你花时间来做这件事。 FreeBSD文档项目。提交文档 进一步阅读 我对现有文件做了一些修改，如何提交？ 我已经写了一些文件。我如何提交？ 如果因为某些原因，你不能把文档放在某个网站上，你可以直接把它发送到`FreeBSD-doc`邮件列表。如果你这样做，请只发送纯文本的文件。 给你要修改的文件做一份拷贝。如果你要改变`foo.xml`，请做 确保 "产品 "被设置为 "文档"，"组件 "被设置为 "文档 "或 "网站"，视情况而定。你应该把你之前的文件附在PR中。如果合适的话，也请提供讨论你的修改的邮件列表帖子的链接。 制作差异。做到这一点的命令是 正确的方法是打开一个问题报告。这样做的说明可以在链接中找到：.../.../support/bugreports/[Bug Reports]。 然后在 "FreeBSD-doc "邮件列表中发布消息，并附上文档的简要概述和文档位置的指针，以征求反馈意见。 然后，对foo.xml进行修改 这将查看两个文件之间的差异，并将它们写入文件`foo.diff`。 要做一个 "差异"，你应该。 然后你可以把`foo.diff`送回项目。如前所述发送PR，并将`foo.diff`文件附在PR上。 你这样做是为了可以跟踪你的提交。当你提交一个PR（问题报告）时，它会被分配一个唯一的编号。然后某个提交者可以把这个PR分配给自己，并与您联系提交新的文档。更多信息，请参见 link:{problem-reports}[编写 FreeBSD 问题报告]。 你可能希望把这个评论请求抄送给其他合适的邮件列表。例如，与如何使用 Subversion 来保持你的源代码树的更新有关的内容，会让 `FreeBSD-stable` 邮件列表的订阅者感兴趣。请只抄送：最多一个其他邮件列表。 你应该提供你的文件供人查阅。如果你可以，把它上传到某个网站上。 link:./[FreeBSD Documentation Project Home]。 link:{fdp-primer}[新贡献者的文档项目入门] 