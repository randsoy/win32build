??   T   0   ?     p     l     t  ?      ?  ?   ?     .	  t   I	  $   ?	     ?	     ?	     
     )
     <
  #   X
     |
  $   ?
  $   ?
  -   ?
       !   .  +   P  )   |  @   ?     ?  #   ?  1        P      m  <   ?  b   ?  b   .  c   ?  ?   ?  >   v     ?  6   ?  7        <  "   Z  ?   }  (   x  ?   ?  ?   3  ?  ?  *   x  2   ?  4   ?  q        }     ?     ?     ?     ?     ?     ?  !   ?          1     F  6   f  $   ?  %   ?  '   ?          (     F  P   Y  6   ?  )   ?            (   :     c  %   |      ?  ?   ?  	  ?  6   ?     ?  )  ?       W     +   d  q   ?  >     "   A     d  ?  z  ?   K     ?  ?   ?     r     ?     ?     ?     ?     ?  )   	      3   '   Q   *   y   )   ?      ?   "   ?   *   !  $   3!  1   X!     ?!  $   ?!  5   ?!  $   ?!  &    "  5   G"  T   }"  T   ?"  [   '#  ?   ?#  %   $     1$  5   M$  0   ?$     ?$  "   ?$  ?   ?$  )   ?%  ~   ?%  ?   h&  ?  '  +   ?(  (   ?(  (   ?(  s   ")     ?)     ?)     ?)     ?)     ?)     ?)     ?)  $   ?)  &   *     <*     V*  (   u*     ?*     ?*  !   ?*  /   ?*  #   &+     J+  7   Z+  '   ?+  (   ?+     ?+  !   ?+  &   ,     =,     X,     w,  ?   ?,    r-  )   ?.     ?.  1  ?.     ?/  s   ?/  %   g0  e   ?0  @   ?0  B   41     w1     A       /                ,              
      .   J         D      *   O   :      !   #       >          E   G                                 4      F   B          I               %   +             S   L                 ;   1   P   H               6      '   7   2   &           $   5                         -   @   T   <   R   M       9       K                                C           Q      ?   )           3   0              "      N   (               	   =   8         ?1  ?  ?  ?  ?  ?    $  @  T  h  |  ?  ?1  7              $   ?????1  $          ????(2  5          ????_2  H          ?????2  2          ?????2  /          ????3  >              +   ?????3            ?????3  /          ?????3  >          ????(4  %          ????O4  +          ???? 
default path is the current directory; default expression is -print
expression may consist of: operators, options, tests, and actions:
 %s terminated by signal %d %s%s changed during execution of %s (old device number %ld, new device number %ld, file system type is %s) [ref %ld] %s: exited with status 255; aborting %s: stopped by signal %d %s: terminated by signal %d < %s ... %s > ?  All Filenames: %s
 Cannot close standard input Cannot obtain birth time of file %s Cannot open input file %s Cannot read list of mounted devices. Cannot read mounted file system list Compression ratio %4.2f%% (higher is better)
 Compression ratio is undefined
 Database %s is in the %s format.
 Failed to initialize shared-file hash table Failed to safely change directory into %s Failed to save working directory in order to run a command on %s Features enabled:  Ignoring unrecognised debug flag %s Invalid argument %s for option --max-database-age Invalid argument %s to -used Invalid argument `%s%s' to -size Invalid escape sequence %s in input delimiter specification. Invalid escape sequence %s in input delimiter specification; character values must not exceed %lo. Invalid escape sequence %s in input delimiter specification; character values must not exceed %lx. Invalid escape sequence %s in input delimiter specification; trailing characters %s not recognised. Invalid input delimiter specification %s: the delimiter must be either a single character or an escape sequence starting with \. Locate database size: %s byte
 Locate database size: %s bytes
 Matching Filenames: %s
 Old-format locate database %s is too short to be valid Only one instance of {} is supported with -exec%s ... + The %s test needs an argument The atexit library function failed The current directory is included in the PATH environment variable, which is insecure in combination with the %s action of find.  Please remove the current directory from your $PATH (that is, remove ".", doubled colons, or leading or trailing colons) The environment is too large for exec(). The environment variable FIND_BLOCK_SIZE is not supported, the only thing that affects the block size is the POSIXLY_CORRECT environment variable The relative path %s is included in the PATH environment variable, which is insecure in combination with the %s action of find.  Please remove that entry from $PATH Usage: %s [-d path | --database=path] [-e | -E | --[non-]existing]
      [-i | --ignore-case] [-w | --wholename] [-b | --basename] 
      [--limit=N | -l N] [-S | --statistics] [-0 | --null] [-c | --count]
      [-P | -H | --nofollow] [-L | --follow] [-m | --mmap] [-s | --stdio]
      [-A | --all] [-p | --print] [-r | --regex] [--regextype=TYPE]
      [--max-database-age D] [--version] [--help]
      pattern...
 WARNING: file %s appears to have mode 0000 WARNING: file system %s has recently been mounted. WARNING: file system %s has recently been unmounted. You may not use {} within the utility name for -execdir and -okdir, because this is a potential security problem. argument line too long argument list too long cannot fork cannot search %s cannot stat current directory days double environment is too large for exec error reading a word from %s error waiting for %s error waiting for child process failed to restore working directory after searching %s failed to return to parent directory failed to set environment variable %s failed to unset environment variable %s invalid -size type `%c' invalid argument `%s' to `%s' invalid expression invalid expression; I was expecting to find a ')' somewhere but did not see one. invalid expression; empty parentheses are not allowed. invalid expression; you have too many ')' invalid mode %s invalid null argument to -size locate database %s is corrupt or invalid missing argument to `%s' oops -- invalid expression type (%d)! oops -- invalid expression type! operators (decreasing precedence; -and is implicit where no others are given):
      ( EXPR )   ! EXPR   -not EXPR   EXPR1 -a EXPR2   EXPR1 -and EXPR2
      EXPR1 -o EXPR2   EXPR1 -or EXPR2   EXPR1 , EXPR2
 positional options (always true): -daystart -follow -regextype

normal options (always true, specified before other expressions):
      -depth --help -maxdepth LEVELS -mindepth LEVELS -mount -noleaf
      --version -xdev -ignore_readdir_race -noignore_readdir_race
 sanity check of the fnmatch() library function failed. single tests (N can be +N or -N or N): -amin N -anewer FILE -atime N -cmin N
      -cnewer FILE -ctime N -empty -false -fstype TYPE -gid N -group NAME
      -ilname PATTERN -iname PATTERN -inum N -iwholename PATTERN -iregex PATTERN
      -links N -lname PATTERN -mmin N -mtime N -name PATTERN -newer FILE unknown unmatched %s quote; by default quotes are special to xargs unless you use the -0 option warning: not following the symbolic link %s warning: the -d option is deprecated; please use -depth instead, because the latter is a POSIX-compliant feature. warning: the locate database can only be read from stdin once. warning: unrecognized escape `\%c' you have too many ')' Project-Id-Version: findutils 4.5.15
Report-Msgid-Bugs-To: bug-findutils@gnu.org
PO-Revision-Date: 2019-01-06 17:52+0800
Last-Translator: pan93412 <pan93412@gmail.com>
Language-Team: Chinese (traditional) <zh-l10n@linux.org.tw>
Language: zh_TW
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bugs: Report translation errors to the Language-Team address.
Plural-Forms: nplurals=1; plural=0;
X-Generator: Lokalize 18.12.0
 
預設路徑為目前的目錄，預設的表達式是 -print
表達式可以包括運算子、選項、測試和操作模式：
 %s 因訊號 %d 而終止 執行 %3$s 時 %1$s%2$s 被修改過（舊的裝置號碼：%4$ld，新的裝置號碼：%5$ld，檔案系統類型：%6$s）[ref %7$ld] %s: 回傳碼為 255；中止 %s: 因訊號 %d 而停止 %s: 因訊號 %d 而中止 < %s ... %s > ?  所有檔案名稱：%s
 無法關閉標準輸入 無法取得檔案「%s」的建立時間 無法開啟輸入檔「%s」 無法讀取已掛載裝置的列表。 無法讀取已掛載的檔案系統列表 壓縮比例：%4.2f%%（越高越好）
 未定義壓縮比例
 資料庫 %s 使用了%s格式。
 無法初始化分享檔案的 Hash 表格 無法安全地將目錄切換至 %s 無法儲存要在 %s 執行指令的工作目錄 啟用了的功能： 忽略無法識別的偵錯旗標 %s 傳給「--max-database-age」的參數「%s」無效 傳給 -used 的參數「%s」無效 傳給 -size 的參數「%s%s」無效 轉義控制序列 (escape sequence)「%s」無效。 轉義控制序列 (escape sequence)「%s」無效：字元值不可以超過 %lo。 轉義控制序列 (escape sequence)「%s」無效：字元值不可以超過 %lx。 轉義控制序列 (escape sequence)「%s」無效：無法辨認最後的字元「%s」。 分隔字元「%s」無效：分隔字元必須是一個 ASCII 字元或以反斜號 \ 開始的轉義控制序列 (escape sequence)。 定位資料庫大小：%s 位元組
 符合的檔案名稱：%s
 舊格式的定位資料庫「%s」因過短而無效 在 -exec%s ... + 裡面只可以使用一次 {} %s 測試需要參數 atexit 函式庫函式執行失敗 PATH 環境變數中包括了目前目錄，當配合 find 的 %s 操作模式時會令系統安全產生漏洞。請從 $PATH 變數移除目前目錄 (即是「.」、雙冒號或者最前或最後的冒號) 執行 exec() 時的環境變數太大。 環境變數 FIND_BLOCK_SIZE 已經不再支援，唯一一個能夠影響檔案區段大小的環境變數是 POSIXLY_CORRECT PATH 環境變數中包括了相對路徑「%s」，當配合 find 的 %s 操作模式時會令系統安全產生漏洞。請從 $PATH 變數移除該項 用法：%s [-d path | --database=path] [-e | -E | --[non-]existing]
      [-i | --ignore-case] [-w | --wholename] [-b | --basename] 
      [--limit=N | -l N] [-S | --statistics] [-0 | --null] [-c | --count]
      [-P | -H | --nofollow] [-L | --follow] [-m | --mmap] [-s | --stdio]
      [-A | --all] [-p | --print] [-r | --regex] [--regextype=TYPE]
      [--max-database-age D] [--version] [--help]
      pattern...
 警告：檔案 %s 看似包含 0000 模式 警告︰檔案系統 %s 剛被掛載。 警告︰檔案系統 %s 剛被卸載。 您不應該在 -execdir 和 -okdir 中使用 {} 作為程式名稱，因為這樣做可能會造成安全漏洞。 參數太長 參數列表過長 無法 fork 找不到 %s 無法 stat 目前目錄 日 雙 執行 exec 時的環境變數太大 從「%s」讀取單字時發生錯誤 等待 %s 時出現錯誤 等待子進程時出現錯誤 搜尋完 %s 後無法恢復工作路徑 無法回到上層目錄 設定環境變數 %s 失敗 無法解除設定環境變數 %s -size 指定的檔案大小單位「%c」無效 「%2$s」的參數「%1$s」無效 表達式無效 表達式無效；「)」本應出現但實際上沒有 表達式無效；不允許空括弧。 表達式無效；出現太多的「)」 模式 %s 無效 -size 後是無效的空白參數 定位資料庫「%s」損壞或無效 「%s」後缺少了參數 表達式類型 (%d) 無效！ 表達式類型無效！ 以下的運算子優先次序由高至低排列；如果沒有運算子，則會假設為 -and :
      ( EXPR )   ! EXPR   -not EXPR   EXPR1 -a EXPR2   EXPR1 -and EXPR2
      EXPR1 -o EXPR2   EXPR1 -or EXPR2   EXPR1 , EXPR2
 位置選項 (邏輯值永遠為 true): -daystart -follow -regextype

一般選項 (邏輯值永遠為 true，必須加在其它表達式之前):
      -depth --help -maxdepth LEVELS -mindepth LEVELS -mount -noleaf
      --version -xdev -ignore_readdir_race -noignore_readdir_race
 測試 fnmatch() 是否可用時出錯。 單 測試 (N 可以有或沒有正負號): -amin N -anewer FILE -atime N -cmin N
      -cnewer FILE -ctime N -empty -false -fstype TYPE -gid N -group NAME
      -ilname PATTERN -iname PATTERN -inum N -iwholename PATTERN -iregex PATTERN
      -links N -lname PATTERN -mmin N -mtime N -name PATTERN -newer FILE 未知 %s引號不配合；除非使用 -0 選項，否則在預設模式下引號對於 xargs 來說是有特別意義的 警告：未在符號連結 %s 之後 警告：-d 選項已經過時，請改用 -depth，因為後者才是符合 POSIX 標準的選項。 警告：locate 資料庫只可以由標準輸入讀取一次。 警告：無效辨認轉義控制序列 (escape sequence)「\%c」 過多「)」 PRIuMAX %s%s changed during execution of %s (old inode number %, new inode number %, file system type is %s) [ref %ld] Your environment variables take up % bytes
 POSIX upper limit on argument length (this system): %
 POSIX smallest allowable upper limit on argument length (all systems): %
 Maximum length of command we could actually use: %
 Size of command buffer we are actually using: %
 執行 %3$s 時 %1$s%2$s 被修改過 (舊 inode 編號為 %4$，新 inode 編號為 %5$，檔案系統類型為 %6$s) [ref %7$ld] 環境變數總共用了 % 位元組
 （此系統）參數長度的 POSIX 上限：%
 （所有系統）參數長度的 POSIX 最低接受上限：%
 實際可用的指令最長長度：%
 實際使用的指令列緩衝區大小：%
 