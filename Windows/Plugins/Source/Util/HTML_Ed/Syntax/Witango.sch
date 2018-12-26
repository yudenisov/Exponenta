object TPersHolder
  P.Name = 'Witango Meta Tags'
  P.SyntaxBlocks = <
    item
      Name = 'Default'
      ID = 0
      FIText = 0
      FIIdentifier = 1
      UseIdentifiers = True
      UsePrefixedIdentifiers = True
      BlockDelimiters = <>
      IdentPrefixes = <
        item
          LeftDelimiter = '@'
        end>
      FirstIdentChars = '@'
    end
    item
      Name = 'CDATA'
      ID = 2
      ParentID = 0
      FIText = 32
      BlockDelimiters = <
        item
          LeftDelimiter = '<![CDATA['
          RightDelimiter = ']]>'
          DelimitersArePartOfBlock = True
        end>
    end
    item
      Name = 'Text'
      ID = 3
      ParentID = 2
      FIText = 8
      BlockDelimiters = <
        item
          LeftDelimiter = '<![CDATA['
          RightDelimiter = ']]>'
        end>
    end
    item
      Name = 'JS'
      ID = 6
      ParentID = 0
      UseMetaSymbol = True
      UseMetaToWrapLines = True
      MetaSymbol = '\'
      FIText = 31
      FIIntNum = 32
      FIFloatNum = 33
      FIHexNum = 34
      FISymbol = 45
      UseSymbols = True
      UseComments = True
      UseSingleLineComments = True
      UseMultiLineComments = True
      UseStrings = True
      UseSingleLineStrings = True
      UseNumbers = True
      UsePrefixedNumbers = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<script language="jscript">'
          RightDelimiter = '</script>'
        end
        item
          LeftDelimiter = '<script language="javascript">'
          RightDelimiter = '</script>'
        end
        item
          LeftDelimiter = '<@SCRIPT LANGUAGE="JavaScript">'
          RightDelimiter = '</@SCRIPT>'
        end
        item
          LeftDelimiter = '<script language="javascript" TYPE="text/JavaScript">'
          RightDelimiter = '</SCRIPT>'
        end
        item
          LeftDelimiter = '<script TYPE="text/JavaScript" language="javascript">'
          RightDelimiter = '</SCRIPT>'
        end>
      SingleLineCommentDelimiters = <
        item
          FontID = 36
          LeftDelimiter = '//'
        end
        item
          FontID = 36
          LeftDelimiter = '<!--'
        end>
      MultiLineCommentDelimiters = <
        item
          FontID = 36
          LeftDelimiter = '/*'
          RightDelimiter = '*/'
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 38
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 38
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      NumPrefixes = <
        item
          LeftDelimiter = '0x'
        end
        item
          LeftDelimiter = '0X'
        end>
      KeywordSets = <
        item
          FontID = 40
          Name = 'reserved'
          Keywords =
            'break,case,catch,class,const,continue,debugger,default,delete,do' +
            ',else,enum,export,extends,false,finally,for,function,if,import,i' +
            'n,new,null,return,super,switch,this,throw,true,try,typeof,var,vo' +
            'id,while,with'
        end>
    end
    item
      Name = 'Tango Tags'
      ID = 87
      ParentID = 6
      FIText = 111
      UseStrings = True
      UseSingleLineStrings = True
      UseIdentifiers = True
      UsePrefixedIdentifiers = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</@'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 113
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 114
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      IdentPrefixes = <
        item
          LeftDelimiter = '@@'
        end>
    end
    item
      Name = 'HTML Abbreviation Tags'
      ID = 7
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<ABBR'
          RightDelimiter = '>'
        end
        item
          LeftDelimiter = '</ABBR'
          RightDelimiter = '>'
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
    end
    item
      Name = 'HTML Contact Information Tags'
      ID = 9
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<ADDRESS'
          RightDelimiter = '>'
        end
        item
          LeftDelimiter = '</ADDRESS'
          RightDelimiter = '>'
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
    end
    item
      Name = 'HTML Java Applet Tags'
      ID = 10
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<APPLET'
          RightDelimiter = '>'
        end
        item
          LeftDelimiter = '</APPLET'
          RightDelimiter = '>'
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords =
            'ALIGN,ALT,ARCHIVE,CODE,CODEBASE,HEIGHT,HSPACE,NAME,OBJECT,VSPACE' +
            ',WIDTH'
        end>
    end
    item
      Name = 'HTML Image Map Region Tag'
      ID = 11
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<AREA'
          RightDelimiter = '>'
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attribute'
          Keywords = 'ALT,COORDS,HREF,NOHREF,ONBLUR,ONFOCUS,SHAPE,TABINDEX,TARGET'
        end>
    end
    item
      Name = 'HTML Bold Text Tags'
      ID = 12
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<B'
          RightDelimiter = '>'
        end
        item
          LeftDelimiter = '</B'
          RightDelimiter = '>'
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords =
            'CLASS,DIR,ID,LANG,ONCLICK,ONDBLCLICK,ONKEYDOWN,ONKEYPRESS,ONKEYU' +
            'P,ONMOUSEDOWN,ONMOUSEMOVE,ONMOUSEOUT,ONMOUSEOVER,ONMOUSEUP,STYLE' +
            ',TITLE'
        end>
    end
    item
      Name = 'HTML anchor tag'
      ID = 5
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseNumbers = True
      UsePrefixedNumbers = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<A'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</A'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      NumPrefixes = <
        item
          LeftDelimiter = '#'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'Attributes'
          Keywords =
            'ACCESSKEY,CHARSET,COORDS,HREF,HREFLANG,NAME,ONBLUR,ONFOCUS,REL,R' +
            'EV,SHAPE,TABINDEX,TARGET,TYPE,CLASS,DIR,ID,LANG,ONCLICK,ONDBLCLI' +
            'CK,ONKEYDOWN,ONKEYPRESS,ONKEYUP,ONMOUSEDOWN,ONMOUSEMOVE,ONMOUSEO' +
            'UT,ONMOUSEOVER,ONMOUSEUP,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Acronym Tag'
      ID = 8
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<ACRONYM'
          RightDelimiter = '>'
        end
        item
          LeftDelimiter = '</ACRONYM'
          RightDelimiter = '>'
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end>
    end
    item
      Name = 'HTML BiDi Overide Tag'
      ID = 16
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<BDO'
          RightDelimiter = '>'
        end
        item
          LeftDelimiter = '</BDO'
          RightDelimiter = '>'
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attribute'
          Keywords = 'CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Base Font Change Tag'
      ID = 15
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<BASEFONT'
          RightDelimiter = '>'
        end
        item
          LeftDelimiter = '</BASEFONT'
          RightDelimiter = '>'
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'COLOR,FACE,SIZE'
        end>
    end
    item
      Name = 'HTML Document Head Tags'
      ID = 14
      ParentID = 0
      FIText = 8
      FISymbol = 66
      UseComments = True
      UseMultiLineComments = True
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<HEAD'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</HEAD'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineCommentDelimiters = <
        item
          FontID = 68
          LeftDelimiter = '<!--'
          RightDelimiter = '-->'
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'DIR,LANG,PROFILE'
        end>
    end
    item
      Name = 'HTML Document Base URI Tag'
      ID = 13
      ParentID = 0
      FIText = 8
      FISymbol = 65
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<BASE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'HREF,TARGET'
        end>
    end
    item
      Name = 'HTML Document Title Tags'
      ID = 17
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<TITLE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</TITLE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'DIR,LANG'
        end>
    end
    item
      Name = 'HTML Client-side Script Tags'
      ID = 18
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<SCRIPT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</SCRIPT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attibutes'
          Keywords = 'CHARSET,DEFER,LANGUAGE,SRC,TYPE'
        end>
    end
    item
      Name = 'HTML ISINDEX - Input Prompt Tag'
      ID = 19
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<ISINDEX'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLASS,DIR,ID,LANG,PROMPT,STYLE'
        end>
    end
    item
      Name = 'HTML Embedded Style Sheet Tags'
      ID = 20
      ParentID = 0
      FIText = 8
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<STYLE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</STYLE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'DIR,LANG,MEDIA,TITLE,TYPE'
        end>
    end
    item
      Name = 'HTML Metadata Tag'
      ID = 21
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<META'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CONTENT,DIR,HTTP-EQUIV,LANG,NAME,SCHEME'
        end>
    end
    item
      Name = 'HTML Document Relationship Tag'
      ID = 1
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<LINK'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CHARSET,CLASS,HREF,HREFLANG,ID,MEDIA,REL,REV,TARGET,TYPE'
        end>
    end
    item
      Name = 'HTML Embedded Object Tags'
      ID = 22
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<OBJECT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</OBJECT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords =
            'ALIGN,ARCHIVE,BORDER,CLASS,CLASSID,CODEBASE,CODETYPE,DATA,DECLAR' +
            'E,DIR,HEIGHT,HSPACE,ID,LANG,NAME,STANDBY,STYLE,TABINDEX,TITLE,TY' +
            'PE,USEMAP,VSPACE,WIDTH'
        end>
    end
    item
      Name = 'HTML Object Parameter Tag'
      ID = 23
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<PARAM'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'ID,NAME,TYPE,VALUE,VALUETYPE'
        end>
    end
    item
      Name = 'HTML Large Text Tags'
      ID = 24
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<BIG'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</BIG'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Block Quotation Tags'
      ID = 25
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<BLOCKQUOTE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</BLOCKQUOTE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CITE,CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Document Body Tags'
      ID = 26
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<BODY'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</BODY'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords =
            'ALINK,BACKGROUND,BGCOLOR,BOTTOMMARGIN,DIR,LANG,LEFTMARGIN,LINK,O' +
            'NLOAD,ONUNLOAD,RIGHTMARGIN,TEXT,TOPMARGIN,VLINK'
        end>
    end
    item
      Name = 'HTML Line Break Tag'
      ID = 27
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<BR'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLEAR'
        end>
    end
    item
      Name = 'HTML Button Tags'
      ID = 28
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<BUTTON'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</BUTTON'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords =
            'ACCESSKEY,CLASS,DIR,DISABLED,ID,LANG,NAME,ONBLUR,ONCLICK,ONDBLCL' +
            'ICK,ONFOCUS,ONKEYDOWN,ONKEYPRESS,ONKEYUP,ONMOUSEDOWN,ONMOUSEMOVE' +
            ',ONMOUSEOUT,ONMOUSEOVER,ONMOUSEUP,STYLE,TABINDEX,TITLE,TYPE,VALU' +
            'E'
        end>
    end
    item
      Name = 'HTML Table Caption Tags'
      ID = 29
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<CAPTION'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</CAPTION'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'ALIGN,CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Centered Block Tags'
      ID = 30
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<CENTER'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</CENTER'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Citation Tags'
      ID = 31
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<CITE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</CITE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Comment Tags'
      ID = 32
      ParentID = 0
      FIText = 107
      BlockDelimiters = <
        item
          LeftDelimiter = '<!--'
          RightDelimiter = '-->'
          DelimitersArePartOfBlock = True
        end>
    end
    item
      Name = 'HTML Document Tags'
      ID = 33
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<HTML'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</HTML'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'DIR,LANG,VERSION'
        end>
    end
    item
      Name = 'HTML Document Type Declaration Tag'
      ID = 34
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<!DOCTYPE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'HTML,PUBLIC'
        end>
    end
    item
      Name = 'HTML Computer Code Tags'
      ID = 35
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<CODE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</CODE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Emphasis Tags'
      ID = 36
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<EM'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</EM'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Form Control Group Tags'
      ID = 37
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<FIELDSET'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</FIELDSET'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Font Change Tags'
      ID = 38
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<FONT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</FONT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLASS,COLOR,DIR,FACE,ID,LANG,SIZE,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Interactive Form Tags'
      ID = 39
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<FORM'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</FORM'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords =
            'ACCEPT-CHARSET,ACTION,CLASS,DIR,ENCTYPE,ID,LANG,METHOD,NAME,ONRE' +
            'SET,ONSUBMIT,TARGET,TITLE'
        end>
    end
    item
      Name = 'HTML Frame Tags'
      ID = 40
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<FRAME'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</FRAME'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords =
            'CLASS,DIR,FRAMEBORDER,ID,LANG,LONGDESC,MARGINHEIGHT,MARGINWIDTH,' +
            'NAME,NORESIZE,SCROLLING,SRC'
        end>
    end
    item
      Name = 'HTML Frameset Tags'
      ID = 41
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<FRAMESET'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</FRAMESET'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'COLS,DIR,ID,LANG,NAME,ONLOAD,ONUNLOAD,ROWS'
        end>
    end
    item
      Name = 'HTML Level-one Heading Tags'
      ID = 42
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<H2'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</H2'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'ALIGN,CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Level-two Heading Tags'
      ID = 42
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<H2'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</H2'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'ALIGN,CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Level-three Heading Tags'
      ID = 43
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<H3'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</H3'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'ALIGN,CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Level-four Heading Tags'
      ID = 44
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<H4'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</H4'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'ALIGN,CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Level-five Heading Tags'
      ID = 45
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<H5'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</H5'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'ALIGN,CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Level-six Heading Tags'
      ID = 46
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<H6'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</H6'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'ALIGN,CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Horizontal rule Tag'
      ID = 47
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<HR'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'ALIGN,CLASS,DIR,ID,LANG,NOSHADE,SIZE,STYLE,TITLE,WIDTH'
        end>
    end
    item
      Name = 'HTML Italic text Tags'
      ID = 48
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<I '
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</I'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Inline Frame Tags'
      ID = 49
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<IFRAME'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</IFRAME'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords =
            'ALIGN,CLASS,DIR,FRAMEBORDER,HEIGHT,ID,LANG,LONGDESC,MARGINHEIGHT' +
            ',MARGINWIDTH,NAME,SCROLLING,SRC,STYLE,TITLE,WIDTH'
        end>
    end
    item
      Name = 'HTML Inline Image Tag'
      ID = 50
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<IMG'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'atrtributes'
          Keywords =
            'ALIGN,ALT,BORDER,CLASS,DIR,HEIGHT,HSPACE,ID,ISMAP,LANG,LONGDESC,' +
            'SRC,STYLE,TITLE,USEMAP,VSPACE,WIDTH'
        end>
    end
    item
      Name = 'HTML Form Input Tag'
      ID = 51
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<INPUT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords =
            'ACCEPT,ACCESSKEY,ALIGN,ALT,CHECKED,CLASS,DIR,DISABLED,ID,LANG,MA' +
            'XLENGTH,NAME,ONBLUR,ONCHANGE,ONCLICK,ONDBLCLICK,ONFOCUS,ONKEYDOW' +
            'N,ONKEYPRESS,ONKEYUP,ONMOUSEDOWN,ONMOUSEMOVE,ONMOUSEOUT,ONMOUSEO' +
            'VER,ONMOUSEUP,ONSELECT,READONLY,SIZE,SRC,STYLE,TABINDEX,TITLE,TY' +
            'PE,USEMAP,VALUE'
        end>
    end
    item
      Name = 'HTML Inserted Text Tags'
      ID = 52
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<INS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</INS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Text to be input Tags'
      ID = 53
      ParentID = 0
      FIText = 8
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<KBD'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</KBD'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Form Field Label Tags'
      ID = 54
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<LABEL'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</LABEL'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords =
            'ACCESSKEY,CLASS,DIR,FOR,ID,LANG,ONBLUR,ONCLICK,ONDBLCLICK,ONFOCU' +
            'S,ONKEYDOWN,ONKEYPRESS,ONKEYUP,ONMOUSEDOWN,ONMOUSEMOVE,ONMOUSEOU' +
            'T,ONMOUSEOVER,ONMOUSEUP,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Fieldset caption Tags'
      ID = 55
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<LEGEND'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</LEGEND'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ACCESSKEY,ALIGN,CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML List Item Tags'
      ID = 56
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<LI'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</LI'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLASS,DIR,ID,LANG,STYLE,TITLE,TYPE,VALUE'
        end>
    end
    item
      Name = 'HTML Image Map Tags'
      ID = 57
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<AREA'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</AREA'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLASS,DIR,ID,LANG,NAME,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Menu List Tags'
      ID = 58
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<MENU'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</MENU'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Frames Alternate Content Tags'
      ID = 59
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<NOFRAMES'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</NOFRAMES'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Non-script Content Tags'
      ID = 60
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<NOSCRIPT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</NOSCRIPT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Ordered list Tags'
      ID = 61
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<OL'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</OL'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Option Group Tags'
      ID = 62
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<OPTGROUP'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</OPTGROUP'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLASS,DIR,DISABLED,ID,LABEL,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Menu Option Tags'
      ID = 63
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<OPTION'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</OPTION'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLASS,DIR,DISABLED,ID,LABEL,LANG,SELECTED,STYLE,TITLE,VALUE'
        end>
    end
    item
      Name = 'HTML Paragraph Tags'
      ID = 64
      ParentID = 0
      FIText = 8
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<P'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</P'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'ALIGN,CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Preformatted text Tags'
      ID = 65
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<PRE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</PRE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLASS,DIR,ID,LANG,STYLE,TITLE,WIDTH'
        end>
    end
    item
      Name = 'HTML Short quotation Tags'
      ID = 66
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<Q'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</Q'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CITE,CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Sample Output Tags'
      ID = 68
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<SAMP'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</SAMP'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Option Selector Tags'
      ID = 69
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<SELECT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</SELECT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords =
            'CLASS,DIR,DISABLED,ID,LANG,MULTIPLE,NAME,ONBLUR,ONCHANGE,ONCLICK' +
            ',ONDBLCLICK,ONFOCUS,ONKEYDOWN,ONKEYPRESS,ONKEYUP,ONMOUSEDOWN,ONM' +
            'OUSEMOVE,ONMOUSEOUT,ONMOUSEOVER,ONMOUSEUP,SIZE,STYLE,TABINDEX,TI' +
            'TLE'
        end>
    end
    item
      Name = 'HTML Small Font Tags'
      ID = 70
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<SMALL'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</SMALL'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Strike-through Text Tags'
      ID = 67
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<S '
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</S'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Generic Block Container'
      ID = 149
      ParentID = 0
      FIText = 8
      FIIntNum = 6
      FIFloatNum = 9
      FIHexNum = 7
      UseStrings = True
      UseSingleLineStrings = True
      UseNumbers = True
      UsePrefixedNumbers = True
      UseSuffixedNumbers = True
      UseMultipleNumSuffixes = False
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<DIV'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</DIV'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      NumPrefixes = <
        item
          LeftDelimiter = '#'
        end>
      NumSuffixes = <
        item
          LeftDelimiter = '%'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ALIGN,CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Generic Inline Container Tags'
      ID = 71
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<SPAN'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</SPAN'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Strike-through text Tags'
      ID = 72
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<STRIKE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</STRIKE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Strong Emphasis'
      ID = 73
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<STRONG'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</STRONG'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Sub/Superscript Tags'
      ID = 74
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<SUB'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</SUB'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '<SUP'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</SUP'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Table Tags'
      ID = 75
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<TABLE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</TABLE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords =
            'ALIGN,BGCOLOR,BORDER,CELLPADDING,CELLSPACING,CLASS,DIR,FRAME,ID,' +
            'LANG,RULES,STYLE,SUMMARY,TITLE,WIDTH'
        end>
    end
    item
      Name = 'HTML Table Body Tags'
      ID = 76
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<TBODY'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</TBODY'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'ALIGN,CHAR,CHAROFF,CLASS,DIR,ID,LANG,STYLE,TITLE,VALIGN'
        end>
    end
    item
      Name = 'HTML Table Data Cell Tags'
      ID = 77
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<TD'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</TD'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords =
            'ABBR,ALIGN,AXIS,BGCOLOR,CHAR,CHAROFF,CLASS,COLSPAN,DIR,HEADERS,H' +
            'EIGHT,ID,LANG,NOWRAP,ONCLICK,ONDBLCLICK,ONKEYDOWN,ONKEYPRESS,ONK' +
            'EYUP,ONMOUSEDOWN,ONMOUSEMOVE,ONMOUSEOUT,ONMOUSEOVER,ONMOUSEUP,RO' +
            'WSPAN,SCOPE,STYLE,TITLE,VALIGN,WIDTH'
        end>
    end
    item
      Name = 'HTML Multi-line Text Input Tags'
      ID = 78
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<TEXTAREA'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</TEXTAREA'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords =
            'ACCESSKEY,CLASS,COLS,DIR,DISABLED,ID,LANG,NAME,ONBLUR,ONCHANGE,O' +
            'NCLICK,ONDBLCLICK,ONFOCUS,ONKEYDOWN,ONKEYPRESS,ONKEYUP,ONMOUSEDO' +
            'WN,ONMOUSEMOVE,ONMOUSEOUT,ONMOUSEOVER,ONMOUSEUP,ONSELECT,READONL' +
            'Y,ROWS,STYLE,TABINDEX,TITLE'
        end>
    end
    item
      Name = 'HTML Table Foot Tags'
      ID = 79
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<TFOOT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</TFOOT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'ALIGN,CHAR,CHAROFF,CLASS,DIR,ID,LANG,STYLE,TITLE,VALIGN'
        end>
    end
    item
      Name = 'HTML Table header cell Tags'
      ID = 80
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<TH'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</TH'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords =
            'ABBR,ALIGN,AXIS,BGCOLOR,CHAR,CHAROFF,CLASS,COLSPAN,DIR,HEADERS,H' +
            'EIGHT,ID,LANG,NOWRAP,ONCLICK,ONDBLCLICK,ONKEYDOWN,ONKEYPRESS,ONK' +
            'EYUP,ONMOUSEDOWN,ONMOUSEMOVE,ONMOUSEOUT,ONMOUSEOVER,ONMOUSEUP,RO' +
            'WSPAN,SCOPE,STYLE,TITLE,VALIGN,WIDTH'
        end>
    end
    item
      Name = 'HTML Table Head Tags'
      ID = 81
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<THEAD'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</THEAD'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'ALIGN,CHAR,CHAROFF,CLASS,DIR,ID,LANG,STYLE,TITLE,VALIGN'
        end>
    end
    item
      Name = 'HTML Table Row Tags'
      ID = 82
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<TR'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</TR'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'ALIGN,BGCOLOR,CHAR,CHAROFF,CLASS,DIR,ID,LANG,STYLE,TITLE,VALIGN'
        end>
    end
    item
      Name = 'HTML Teletype text Tags'
      ID = 83
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<TT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</TT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Underlined Text Tags'
      ID = 84
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<U '
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</U'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'HTML Unordered list Tags'
      ID = 85
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<UL'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</UL'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLASS,COMPACT,DIR,ID,LANG,STYLE,TITLE,TYPE'
        end>
    end
    item
      Name = 'HTML Variable Tags'
      ID = 86
      ParentID = 0
      FIText = 8
      UseStrings = True
      UseSingleLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<VAR'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</VAR'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      SingleLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'attributes'
          Keywords = 'CLASS,DIR,ID,LANG,STYLE,TITLE'
        end>
    end
    item
      Name = 'TANGO absolute row'
      ID = 88
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@ABSROW'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING,FORMAT'
        end>
    end
    item
      Name = 'TANGO action result'
      ID = 4
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@ACTIONRESULT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING,FORMAT,NAME,NUM'
        end>
    end
    item
      Name = 'TANGO Purge Cache'
      ID = 195
      ParentID = 4
      FIText = 19
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@PURGECACHE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'PATH,TYPES'
        end>
    end
    item
      Name = 'TANGO add rows to array'
      ID = 89
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@ADDROWS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ARRAY,POSITION,SCOPE,VALUE'
        end>
    end
    item
      Name = 'TANGO current application path & file '
      ID = 90
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@APPFILE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING'
        end>
    end
    item
      Name = 'TANGO path to the current application file'
      ID = 91
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@APPFILEPATH'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING'
        end>
    end
    item
      Name = 'TANGO name of the current application file'
      ID = 92
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@APPFILENAME'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING'
        end>
    end
    item
      Name = 'TANGO key value of the current application scope'
      ID = 93
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@APPKEY'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING'
        end>
    end
    item
      Name = 'TANGO current application name'
      ID = 94
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@APPNAME'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING'
        end>
    end
    item
      Name = 'TANGO path to the current application'
      ID = 95
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@APPPATH'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING'
        end>
    end
    item
      Name = 'TANGO value of named argument'
      ID = 96
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@ARG'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING,FORMAT,NAME,TYPE'
        end>
    end
    item
      Name = 'TANGO argument names'
      ID = 97
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@ARGNAMES'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ARRAY ATTRIBUTES'
          Keywords = 'APREFIX,ASUFFIX,CPREFIX,CSUFFIX,RPREFIX,RSUFFIX'
        end>
    end
    item
      Name = 'TANGO create array'
      ID = 98
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@ARRAY'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'CDELIM,COLS,RDELIM,ROWS,VALUE'
        end
        item
          FontID = 74
          Name = 'ARRAY ATTRIBUTES'
          Keywords = 'APREFIX,ASUFFIX,CPREFIX,CSUFFIX,RPREFIX,RSUFFIX'
        end>
    end
    item
      Name = 'TANGO ASCII value of the first character '
      ID = 99
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@ASCII'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'CHAR'
        end>
    end
    item
      Name = 'TANGO assign a value to a variable'
      ID = 100
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@ASSIGN'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'DOMAIN,EXPIRES,NAME,PATH,SCOPE,SECURE,VALUE'
        end>
    end
    item
      Name = 'TANGO pass a value in Direct DBMS action'
      ID = 101
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@BIND'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'BINDNAME,BINDTYPE,DATATYPE,NAME,PRECISION,SCALE,SCOPE'
        end>
    end
    item
      Name = 'TANGO terminate execution of loop block'
      ID = 102
      ParentID = 0
      FIText = 4
      BlockDelimiters = <
        item
          LeftDelimiter = '<@BREAK'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
    end
    item
      Name = 'TANGO calculation'
      ID = 103
      ParentID = 0
      FIText = 4
      FIIntNum = 105
      FIFloatNum = 107
      FIHexNum = 109
      UseStrings = True
      UseMultiLineStrings = True
      UseNumbers = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@CALC'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING,EXPR,FORMAT,PRECISION'
        end
        item
          FontID = 110
          Name = 'OPERATORS'
          Keywords =
            '-,!,!=,%,&&,*,/,:=,;,?:,^,||,+,<,<=,=,>,>=,AND,BEGINSWITH,CONTAI' +
            'NS,ENDSWITH,foreach,NOT,OR'
        end
        item
          FontID = 116
          Name = 'FUNCTIONS'
          Keywords =
            'abs,acos,asin,ceil,cos,exp,fac,floor,len,log,log10,max,mean,min,' +
            'num,prod,sin,sqrt,sum,tan,var'
        end>
    end
    item
      Name = 'TANGO cgi'
      ID = 104
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@CGI'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING'
        end>
    end
    item
      Name = 'TANGO CGI Attribute'
      ID = 105
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@CGIPARAM'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'COOKIE,ENCODING,NAME'
        end>
    end
    item
      Name = 'TANGO ASCII Character'
      ID = 106
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@CHAR'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'Parameters'
          Keywords = 'CODE,ENCODING'
        end>
    end
    item
      Name = 'TANGO Choicelist'
      ID = 107
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@CHOICELIST'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords =
            'CLASS,COLUMNS,ENCODING,LABELPREFIX,LABELSUFFIX,MULTIPLE,NAME,onB' +
            'lur,onClick,onFocus,OPTIONEXTRAS,OPTIONS,ORDER,ROWS,SELECTED,SEL' +
            'ECTEXTRAS,SIZE,STYLE,TABLEEXTRAS,TDEXTRAS,TREXTRAS,TYPE,VALUES'
        end>
    end
    item
      Name = 'TANGO Cipher'
      ID = 108
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@CIPHER'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ACTION,ENCODING,KEY,STR,TYPE'
        end>
    end
    item
      Name = 'TANGO ClassFile'
      ID = 109
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@CLASSFILE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING'
        end>
    end
    item
      Name = 'TANGO ClassFilePath'
      ID = 110
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@CLASSFILEPATH'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING'
        end>
    end
    item
      Name = 'TANGO Column NUM'
      ID = 111
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@COL '
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING,FORMAT,NUM'
        end>
    end
    item
      Name = 'TANGO Column Loop'
      ID = 112
      ParentID = 0
      FIText = 4
      BlockDelimiters = <
        item
          LeftDelimiter = '<@COLS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</@COLS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
    end
    item
      Name = 'TANGO Column Value by Name'
      ID = 113
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@COLUMN'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTIBUTES'
          Keywords = 'ENCODING,FORMAT,NAME'
        end>
    end
    item
      Name = 'TANGO Comment'
      ID = 114
      ParentID = 0
      FIText = 58
      BlockDelimiters = <
        item
          LeftDelimiter = '<@COMMENT>'
          RightDelimiter = '</@COMMENT>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '<@!'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
    end
    item
      Name = 'TANGO ConfigPath'
      ID = 115
      ParentID = 0
      FIText = 4
      BlockDelimiters = <
        item
          LeftDelimiter = '<@CONFIGPATH'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
    end
    item
      Name = 'TANGO Data Source Connections'
      ID = 116
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@CONNECTIONS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'DSN,ENCODING,TYPE'
        end
        item
          FontID = 20
          Name = 'ARRAY ATTRIBUTES'
          Keywords = 'APREFIX,ASUFFIX,CPREFIX,CSUFFIX,RPREFIX,RSUFFIX'
        end>
    end
    item
      Name = 'TANGO Continue Loop'
      ID = 117
      ParentID = 0
      FIText = 4
      BlockDelimiters = <
        item
          LeftDelimiter = '<@CONTINUE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
    end
    item
      Name = 'TANGO Create Object'
      ID = 118
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@CREATEOBJECT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'EXPIRYURL,INITSTRING,OBJECTID,SYSTEMOBJECT,TYPE'
        end>
    end
    item
      Name = 'TANGO New Line'
      ID = 119
      ParentID = 0
      FIText = 4
      BlockDelimiters = <
        item
          LeftDelimiter = '<@CRLF'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
    end
    item
      Name = 'TANGO Column Loop Index'
      ID = 120
      ParentID = 0
      FIText = 4
      BlockDelimiters = <
        item
          LeftDelimiter = '<@CURCOL'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
    end
    item
      Name = 'TANGO Name of Current Action'
      ID = 121
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@CURRENTACTION'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING'
        end>
    end
    item
      Name = 'TANGO Current Date'
      ID = 122
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@CURRENTDATE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING,FORMAT'
        end>
    end
    item
      Name = 'TANGO Current Time'
      ID = 123
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = ' <@CURRENTTIME'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING,FORMAT'
        end>
    end
    item
      Name = 'TANGO Current Time Stamp'
      ID = 124
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@CURRENTTIMESTAMP'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING,FORMAT'
        end>
    end
    item
      Name = 'TANGO Current Row'
      ID = 125
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@CURROW'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
        end>
    end
    item
      Name = 'TANGO Custom Tags'
      ID = 126
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@CUSTOMTAGS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'APREFIX,ASUFFIX,CPREFIX,CSUFFIX,RPREFIX,RSUFFIX,SCOPE'
        end>
    end
    item
      Name = 'TANGO DataSource Status'
      ID = 127
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@DATASOURCESTATUS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords =
            'APREFIX,ASUFFIX,CPREFIX,CSUFFIX,DSN,ENCODING,RPREFIX,RSUFFIX,TYP' +
            'E'
        end>
    end
    item
      Name = 'TANGO Days between Dates'
      ID = 128
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@DATEDIFF'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'DATE1,DATE2,FORMAT'
        end>
    end
    item
      Name = 'TANGO Date to Seconds Conversion'
      ID = 129
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@DATETOSECS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'DATE,FORMAT'
        end>
    end
    item
      Name = 'TANGO Seconds to Date'
      ID = 130
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@SECSTODATE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING,FORMAT,SECS'
        end>
    end
    item
      Name = 'TANGO Add days to Date'
      ID = 131
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@DAYS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'DATE,DAYS,ENCODING,FORMAT'
        end>
    end
    item
      Name = 'TANGO Current Datasource Name and Version'
      ID = 132
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@DBMS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING'
        end>
    end
    item
      Name = 'TANGO Debug code'
      ID = 133
      ParentID = 0
      FIText = 4
      BlockDelimiters = <
        item
          LeftDelimiter = '<@DEBUG'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</@DEBUG'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
    end
    item
      Name = 'TANGO Remove rows from array'
      ID = 134
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@DELROWS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ARRAY,NUM,POSITION,SCOPE'
        end>
    end
    item
      Name = 'TANGO Distinct Array Values'
      ID = 135
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@DISTINCT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'APREFIX,ARRAY,ASUFFIX,COLS,CPREFIX,CSUFFIX,RPREFIX,RSUFFIX,SCOPE'
        end>
    end
    item
      Name = 'TANGO Contents of TAF file'
      ID = 136
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@DOCS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING,FILE'
        end>
    end
    item
      Name = 'TANGO XML to Document instance'
      ID = 137
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@DOM'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'VALUE'
        end>
    end
    item
      Name = 'TANGO Current Domain'
      ID = 138
      ParentID = 0
      FIText = 4
      BlockDelimiters = <
        item
          LeftDelimiter = '<@DOMAIN'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
    end
    item
      Name = 'TANGO DOM Delete'
      ID = 139
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@DOMDELETE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ARRTBUTES'
          Keywords = 'ELEMENT,OBJECT,SCOPE'
        end>
    end
    item
      Name = 'TANGO DOM Insert'
      ID = 140
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@DOMINSERT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</@DOMINSERT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ELEMENT,OBJECT,POSITION,SCOPE'
        end>
    end
    item
      Name = 'TANGO DOM Replace'
      ID = 141
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@DOMREPLACE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</@DOMREPLACE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ELEMENT,OBJECT,SCOPE'
        end>
    end
    item
      Name = 'TANGO Quote Literal'
      ID = 142
      ParentID = 0
      FIText = 4
      BlockDelimiters = <
        item
          LeftDelimiter = '<@DQ'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '<@SQ'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
    end
    item
      Name = 'TANGO DataSource Date'
      ID = 143
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@DSDATE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'DATE,ENCODING,INFORMAT'
        end>
    end
    item
      Name = 'TANGO DataSource Time'
      ID = 144
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@DSTIME'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING,INFORMAT,TIME'
        end>
    end
    item
      Name = 'TANGO DataSource TimeStamp'
      ID = 145
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@DSTIMESTAMP'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
        end>
    end
    item
      Name = 'TANGO DataSource Number'
      ID = 146
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@DSNUM'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING,NUM'
        end>
    end
    item
      Name = 'TANGO DataSource Type'
      ID = 147
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@DSTYPE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING'
        end>
    end
    item
      Name = 'TANGO DOM Element Attribute Value'
      ID = 148
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@ELEMENTATTRIBUTE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords =
            'APREFIX,ASUFFIX,ATTRIBUTE,CPREFIX,CSUFFIX,ELEMENT,OBJECT,RPREFIX' +
            ',RSUFFIX,SCOPE,TYPE'
        end>
    end
    item
      Name = 'TANGO DOM Element Attribute Values'
      ID = 150
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@ELEMENTATTRIBUTES'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords =
            'APREFIX,ASUFFIX,CPREFIX,CSUFFIX,ELEMENT,OBJECT,RPREFIX,RSUFFIX,S' +
            'COPE,TYPE'
        end>
    end
    item
      Name = 'TANGO DOM Element Name '
      ID = 151
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@ELEMENTNAME'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
        end>
    end
    item
      Name = 'TANGO DOM Element Value'
      ID = 152
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@ELEMENTVALUE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords =
            'APREFIX,ASUFFIX,CPREFIX,CSUFFIX,ELEMENT,OBJECT,RPREFIX,RSUFFIX,S' +
            'COPE,TYPE'
        end>
    end
    item
      Name = 'TANGO Error'
      ID = 153
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@ERROR'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING,PART'
        end>
    end
    item
      Name = 'TANGO Error Loop'
      ID = 154
      ParentID = 0
      FIText = 4
      BlockDelimiters = <
        item
          LeftDelimiter = '<@ERRORS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</@ERRORS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
    end
    item
      Name = 'TANGO Exclude from results'
      ID = 155
      ParentID = 0
      FIText = 4
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@EXCLUDE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</@EXCLUDE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      KeywordSets = <
        item
          FontID = 4
          Name = 'SELF'
          Keywords = 'EXCLUDE'
        end>
    end
    item
      Name = 'TANGO Exit from current Results'
      ID = 156
      ParentID = 0
      FIText = 4
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@EXIT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      KeywordSets = <
        item
          FontID = 4
          Name = 'SELF'
          Keywords = 'EXIT'
        end>
    end
    item
      Name = 'TANGO Filter from array'
      ID = 157
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@FILTER'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'APREFIX,ARRAY,ASUFFIX,CPREFIX,CSUFFIX,EXPR,RPREFIX,RSUFFIX,SCOPE'
        end
        item
          FontID = 4
          Name = 'SELF'
          Keywords = 'FILTER'
        end>
    end
    item
      Name = 'TANGO For Loop'
      ID = 158
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@FOR'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</@FOR'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'PUSH,START,STEP,STOP'
        end
        item
          FontID = 4
          Name = 'SELF'
          Keywords = 'FOR'
        end>
    end
    item
      Name = 'TANGO Format string'
      ID = 159
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@FORMAT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING,FORMAT,INFORMAT,STR'
        end
        item
          FontID = 4
          Name = 'SELF'
          Keywords = 'FORMAT'
        end>
    end
    item
      Name = 'TANGO Get Parameter value from TCF'
      ID = 160
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@GETPARAM'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords =
            'APREFIX,ASUFFIX,CPREFIX,CSUFFIX,ENCODING,FORMAT,NAME,RPREFIX,RSU' +
            'FFIX,TYPE'
        end
        item
          FontID = 4
          Name = 'SELF'
          Keywords = 'GETPARAM'
        end>
    end
    item
      Name = 'TANGO Conditional empty'
      ID = 163
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@IFEMPTY'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '<@ELSEIFEMPTY'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'VALUE'
        end
        item
          FontID = 4
          Name = 'SELF'
          Keywords = 'ELSEIFEMPTY'
        end>
    end
    item
      Name = 'TANGO Conditional equality'
      ID = 164
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@IFEQUAL'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '<@ELSEIFEQUAL'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'VALUE1,VALUE2'
        end
        item
          FontID = 4
          Name = 'SELF'
          Keywords = 'IFEQUAL'
        end>
    end
    item
      Name = 'TANGO Conditional ElseIf'
      ID = 162
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@ELSEIF'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'EXPR'
        end
        item
          FontID = 4
          Name = 'SELF'
          Keywords = 'ELSEIF'
        end>
    end
    item
      Name = 'TANGO Conditional If'
      ID = 161
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@IF'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</@IF'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'EXPR,FLASE,TRUE'
        end
        item
          FontID = 4
          Name = 'SELF'
          Keywords = 'IF'
        end>
    end
    item
      Name = 'TANGO Conditional else'
      ID = 166
      ParentID = 0
      FIText = 4
      BlockDelimiters = <
        item
          LeftDelimiter = '<@ELSE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
    end
    item
      Name = 'TANGO External file inclusion'
      ID = 165
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@INCLUDE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'FILE'
        end
        item
          FontID = 4
          Name = 'SELF'
          Keywords = 'INCLUDE'
        end>
    end
    item
      Name = 'TANGO Array Intersect'
      ID = 167
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@INTERSECT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords =
            'APREFIX,ARRAY1,ARRAY2,ASUFFIX,COLS,CPREFIX,CSUFFIX,RPREFIX,RSUFF' +
            'IX,SCOPE1,SCOPE2'
        end>
    end
    item
      Name = 'TANGO IsAlpha Test'
      ID = 168
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@ISALPHA'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'STR'
        end>
    end
    item
      Name = 'TANGO IS Date/Time/TimeStamp Test'
      ID = 169
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@ISDATE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '<@ISTIME'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '<@ISTIMESTAMP'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'VALUE'
        end>
    end
    item
      Name = 'TANGO IsNullObject Test'
      ID = 170
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@ISNULLOBJECT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'OBJECT,SCOPE'
        end>
    end
    item
      Name = 'TANGO IsNumber Test'
      ID = 171
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@ISNUM'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'VALUE'
        end>
    end
    item
      Name = 'TANGO Keep Characters in String'
      ID = 172
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@KEEP'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'CHARS,ENCODING,STR'
        end>
    end
    item
      Name = 'TANGO Get First x Characters from String'
      ID = 173
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@LEFT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING,NUMCHARS,STR'
        end>
    end
    item
      Name = 'TANGO Length of String'
      ID = 174
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@LENGTH'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'STR'
        end>
    end
    item
      Name = 'TANGO Literal String Value'
      ID = 175
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@LITERAL'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING,VALUE'
        end>
    end
    item
      Name = 'TANGO Locate substring in string'
      ID = 176
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@LOCATE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'FINDSTR,STR'
        end>
    end
    item
      Name = 'TANGO Force lower case of string'
      ID = 177
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@LOWER'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING,STR'
        end>
    end
    item
      Name = 'TANGO Left Trim Spaces'
      ID = 178
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@LTRIM'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING,STR'
        end>
    end
    item
      Name = 'TANGO Maximum Matches of search'
      ID = 179
      ParentID = 0
      FIText = 4
      BlockDelimiters = <
        item
          LeftDelimiter = '<@MAXROWS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
    end
    item
      Name = 'TANGO Object Handlers'
      ID = 180
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@METAOBJECTHANDLERS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'APREFIX,ASUFFIX,CPREFIX,CSUFFIX,RPREFIX,RSUFFIX'
        end>
    end
    item
      Name = 'TANGO Increment Variable Value'
      ID = 181
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@NEXTVAL'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 118
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 119
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 120
          Name = 'ATTRIBUTES'
          Keywords = 'NAME,SCOPE,STEP'
        end>
    end
    item
      Name = 'TANGO Null Object'
      ID = 182
      ParentID = 0
      FIText = 4
      BlockDelimiters = <
        item
          LeftDelimiter = '<@NULLOBJECT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
    end
    item
      Name = 'TANGO Number of  DB rows Affected'
      ID = 183
      ParentID = 0
      FIText = 4
      BlockDelimiters = <
        item
          LeftDelimiter = '<@NUMAFFECTED'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
    end
    item
      Name = 'TANGO Number of Columns in array'
      ID = 184
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@NUMCOLS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRBUTES'
          Keywords = 'ARRAY'
        end>
    end
    item
      Name = 'TANGO Number of Objects in Collection or iterator'
      ID = 185
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@NUMOBJECTS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'OBJECT,SCOPE'
        end>
    end
    item
      Name = 'TANGO Number of Rows in Array'
      ID = 186
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@NUMROWS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ARRAY'
        end>
    end
    item
      Name = 'TANGO Object at Index'
      ID = 187
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@OBJECTAT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'NUM,OBJECT,SCOPE'
        end>
    end
    item
      Name = 'TANGO Objects Loop'
      ID = 188
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@OBJECTS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</@OBJECTS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ITEMSCOPE,ITEMVAR,OBJECT,SCOPE,START,STOP'
        end>
    end
    item
      Name = 'TANGO Remove Characters from String'
      ID = 189
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@OMIT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'CHARS,ENCODING,STR'
        end>
    end
    item
      Name = 'TANGO Server Platform'
      ID = 190
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@PLATFORM'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING'
        end>
    end
    item
      Name = 'TANGO Value of Post Argument'
      ID = 191
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@POSTARG'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTRES'
          Keywords = 'ENCODING,FORMAT,NAME,TYPE'
        end>
    end
    item
      Name = 'TANGO Names of Post Arguments'
      ID = 192
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@POSTARGNAMES'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'APREFIX,ASUFFIX,CPREFIX,CSUFFIX,RPREFIX,RSUFFIX'
        end>
    end
    item
      Name = 'TANGO Server Product Type'
      ID = 193
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@PRODUCT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING'
        end>
    end
    item
      Name = 'TANGO Purge Variables and Values'
      ID = 194
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@PURGE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'NAME,SCOPE'
        end>
    end
    item
      Name = 'TANGO Purge Accumulated Results'
      ID = 196
      ParentID = 0
      FIText = 4
      BlockDelimiters = <
        item
          LeftDelimiter = '<@PURGERESULTS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
    end
    item
      Name = 'TANGO Random Number'
      ID = 197
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@RANDOM'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'HIGN,LOW'
        end>
    end
    item
      Name = 'TANGO Find tesxt with Regular Expression'
      ID = 198
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@REGEX'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'EXPR,STR,TYPE'
        end>
    end
    item
      Name = 'TANGO Reload Config Info'
      ID = 199
      ParentID = 0
      FIText = 4
      BlockDelimiters = <
        item
          LeftDelimiter = '<@RELOADCONFIG'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
    end
    item
      Name = 'TANGO Reload Custom Tags'
      ID = 200
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@RELOADCUSTOMTAGS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'SCOPE'
        end>
    end
    item
      Name = 'TANGO Replace Text in String with Other Text'
      ID = 201
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@REPLACE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING,FINDSTR,POSITION,REPLACESTR,STR'
        end>
    end
    item
      Name = 'TANGO Results'
      ID = 202
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@RESULTS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING'
        end>
    end
    item
      Name = 'TANGO Last x Characters in String'
      ID = 203
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@RIGHT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING,NUMCHARS,STR'
        end>
    end
    item
      Name = 'TANGO Array Rows Loop'
      ID = 204
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@ROWS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</@ROWS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ARRAY,FORMAT,PUSH,SCOPE,START,STEP,STOP'
        end>
    end
    item
      Name = 'TANGO Right Trim Spaces'
      ID = 205
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@RTRIM'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING,STR'
        end>
    end
    item
      Name = 'TANGO Server-Side JavaScript '
      ID = 206
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@SCRIPT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end
        item
          LeftDelimiter = '</@SCRIPT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'EXPR,SCOPE'
        end>
    end
    item
      Name = 'TANGO Search Argument Value'
      ID = 207
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@SEARCHARG'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING,FORMAT,NAME,TYPE'
        end>
    end
    item
      Name = 'TANGO Search Argument Names'
      ID = 208
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@SEARCHARNAMES'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'APREFIX,ASUFFIX,CPREFIX,CSUFFIX,RPREFIX,RSUFFIX'
        end>
    end
    item
      Name = 'TANGO Seconds to Time'
      ID = 209
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@SECSTOTIME'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING,FORMAT,SECS'
        end>
    end
    item
      Name = 'TANGO Time to Seconds'
      ID = 210
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@TIMETOSECS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING,FORMAT,TIME'
        end>
    end
    item
      Name = 'TANGO Seconds to TimeStamp'
      ID = 211
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@SECSTOTS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING,FORMAT,SECS'
        end>
    end
    item
      Name = 'TANGO TimeStamp to Seconds'
      ID = 212
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@TSTOSECS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING,FORMAT,TS'
        end>
    end
    item
      Name = 'TANGO Server Status and Statistics'
      ID = 213
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@SERVERSTATUS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'APREFIX,ASUFFIX,CPREFIX,CSUFFIX,ENCODING,RPREFIX,RSUFFIX,VALUE'
        end>
    end
    item
      Name = 'TANGO Set Cookies in HTTP Header'
      ID = 214
      ParentID = 0
      FIText = 4
      BlockDelimiters = <
        item
          LeftDelimiter = '<@SETCOOKIES'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
    end
    item
      Name = 'TANGO Set Method Parameter'
      ID = 215
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@SETPARAM'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'NAME,VALUE'
        end>
    end
    item
      Name = 'TANGO Sort Rows in Array'
      ID = 216
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@SORT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ARRAY,COLS,SCOPE'
        end>
    end
    item
      Name = 'TANGO SQL from last DB Action'
      ID = 217
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@SQL'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING'
        end>
    end
    item
      Name = 'TANGO Starting Row of Recordset'
      ID = 218
      ParentID = 0
      FIText = 4
      BlockDelimiters = <
        item
          LeftDelimiter = '<@STARTROW'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
    end
    item
      Name = 'TANGO Substring'
      ID = 219
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@SUBSTRING'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING,NUMCHARS,START,STR'
        end>
    end
    item
      Name = 'TANGO Timer'
      ID = 220
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@TIMER'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'NAME,VALUE'
        end>
    end
    item
      Name = 'TANGO Temp Filename'
      ID = 221
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@TMPFILENAME'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING'
        end>
    end
    item
      Name = 'TANGO Local Timestamp to GMT'
      ID = 222
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@TOGMT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING,FORMAT,TS'
        end>
    end
    item
      Name = 'TANGO Split String to Array'
      ID = 223
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@TOKENIZE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'APREFIX,ASUFFIX,CHARS,CPREFIX,CSUFFIX,RPREFIX,RSUFFIX,VALUE'
        end>
    end
    item
      Name = 'TANGO Total Number of Rows Matching Criteria'
      ID = 224
      ParentID = 0
      FIText = 4
      BlockDelimiters = <
        item
          LeftDelimiter = '<@TOTALROWS'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
    end
    item
      Name = 'TANGO Transpose Array'
      ID = 225
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'APREFIX,ARRAY,ASUFFIX,CPREFIX,CSUFFIX,RPREFIX,RSUFFIX,SCOPE'
        end>
    end
    item
      Name = 'TANGO Remove Leading and Trailing Spaces'
      ID = 226
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@TRIM'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING,STR'
        end>
    end
    item
      Name = 'TANGO Union two Arrays'
      ID = 227
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@UNION'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords =
            'APREFIX,ARRAY1,ARRAY2,ASUFFIX,COLS,CPREFIX,CSUFFIX,RPREFIX,RSUFF' +
            'IX,SCOPE1,SCOPE2'
        end>
    end
    item
      Name = 'TANGO Convert Text to UPPERCASE'
      ID = 228
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@UPPER'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING,STR'
        end>
    end
    item
      Name = 'TANGO URL Encode'
      ID = 230
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@URLENCODE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'STR'
        end>
    end
    item
      Name = 'TANGO Throw HTTP Request'
      ID = 229
      ParentID = 0
      FIText = 3
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@URL'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'BASE,ENCODING,FROM,LOCATION,USERAGENT'
        end>
    end
    item
      Name = 'TANGO Unique Session Identifying cookie'
      ID = 233
      ParentID = 0
      FIText = 4
      BlockDelimiters = <
        item
          LeftDelimiter = '<@USERREFERENCECOOKIE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
    end
    item
      Name = 'TANGO Unique Session Identifying URL argument'
      ID = 232
      ParentID = 0
      FIText = 4
      BlockDelimiters = <
        item
          LeftDelimiter = '<@USERREFERENCEARGUMENT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
    end
    item
      Name = 'TANGO Unique Session Identifying Number'
      ID = 231
      ParentID = 0
      FIText = 4
      BlockDelimiters = <
        item
          LeftDelimiter = '<@USERREFERENCE'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
    end
    item
      Name = 'TANGO Variable Reference'
      ID = 234
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@VAR'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords =
            'APREFIX,ASUFFIX,CPREFIX,CSUFFIX,ELEMENT,ENCODING,FORMAT,NAME,RPR' +
            'EFIX,RSUFFIX,SCOPE,TYPE'
        end>
    end
    item
      Name = 'TANGO Variable Information'
      ID = 235
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@VARINFO'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ATTRIBUTE,NAME,SCOPE'
        end>
    end
    item
      Name = 'TANGO Variable Names'
      ID = 236
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@VARNAMES'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'APREFIX,ASUFFIX,CPREFIX,CSUFFIX,RPREFIX,RSUFFIX,SCOPE'
        end>
    end
    item
      Name = 'TANGO Pass Value in CALLMETHOD'
      ID = 237
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@VARPARAM'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'DATATYPE,NAME,SCOPE'
        end>
    end
    item
      Name = 'TANGO Server Version'
      ID = 238
      ParentID = 0
      FIText = 4
      UseStrings = True
      UseMultiLineStrings = True
      UseKeywords = True
      BlockDelimiters = <
        item
          LeftDelimiter = '<@VERSION'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
      MultiLineStringDelimiters = <
        item
          FontID = 30
          LeftDelimiter = #39
          RightDelimiter = #39
        end
        item
          FontID = 30
          LeftDelimiter = '"'
          RightDelimiter = '"'
        end>
      KeywordSets = <
        item
          FontID = 20
          Name = 'ATTRIBUTES'
          Keywords = 'ENCODING'
        end>
    end
    item
      Name = 'TANGO WebAnalyzer Visitor Unique Identifier'
      ID = 239
      ParentID = 0
      FIText = 4
      BlockDelimiters = <
        item
          LeftDelimiter = '<@VISITORID'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
    end
    item
      Name = 'TANGO Path to web server root directory'
      ID = 240
      ParentID = 0
      FIText = 4
      BlockDelimiters = <
        item
          LeftDelimiter = '<@WEBROOT'
          RightDelimiter = '>'
          DelimitersArePartOfBlock = True
        end>
    end>
  P.FontTable = <
    item
      FontID = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      BackColor = clWhite
      UseDefFont = False
      UseDefBack = False
    end
    item
      FontID = 32
      BlockID = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
    end
    item
      FontID = 31
      BlockID = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
    end
    item
      FontID = 8
      BlockID = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
    end
    item
      FontID = 33
      BlockID = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
    end
    item
      FontID = 34
      BlockID = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
    end
    item
      FontID = 36
      BlockID = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsItalic]
    end
    item
      FontID = 38
      BlockID = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
    end
    item
      FontID = 40
      BlockID = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
    end
    item
      FontID = 45
      BlockID = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
    end
    item
      FontID = 20
      BlockID = 10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
    end
    item
      FontID = 30
      BlockID = 7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
    end
    item
      FontID = 65
      BlockID = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
    end
    item
      FontID = 66
      BlockID = 14
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
    end
    item
      FontID = 68
      BlockID = 14
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsItalic]
    end
    item
      FontID = 111
      BlockID = 87
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
    end
    item
      FontID = 113
      BlockID = 87
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
    end
    item
      FontID = 114
      BlockID = 87
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
    end
    item
      FontID = 4
      BlockID = 93
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
    end
    item
      FontID = 105
      BlockID = 103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
    end
    item
      FontID = 107
      BlockID = 103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsItalic]
    end
    item
      FontID = 109
      BlockID = 103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
    end
    item
      FontID = 110
      BlockID = 103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
    end
    item
      FontID = 116
      BlockID = 103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
    end
    item
      FontID = 58
      BlockID = 114
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsItalic]
    end
    item
      FontID = 74
      BlockID = 98
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
    end
    item
      FontID = 6
      BlockID = 149
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
    end
    item
      FontID = 7
      BlockID = 149
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
    end
    item
      FontID = 9
      BlockID = 149
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
    end
    item
      FontID = 118
      BlockID = 181
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
    end
    item
      FontID = 119
      BlockID = 181
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
    end
    item
      FontID = 120
      BlockID = 181
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
    end
    item
      FontID = 19
      BlockID = 195
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
    end
    item
      FontID = 3
      BlockID = 207
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
    end
    item
      FontID = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      BackColor = clWhite
      UseDefFont = False
      UseDefBack = False
    end>
  P.SyntaxVersion = 3
end