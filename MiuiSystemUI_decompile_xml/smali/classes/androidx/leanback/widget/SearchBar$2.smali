.class public final Landroidx/leanback/widget/SearchBar$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/leanback/widget/SearchBar;


# direct methods
.method public synthetic constructor <init>(Landroidx/leanback/widget/SearchBar;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/leanback/widget/SearchBar$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/leanback/widget/SearchBar$2;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Landroidx/leanback/widget/SearchBar$2;->$r8$classId:I

    .line 4
    packed-switch v1, :pswitch_data_0

    .line 6
    goto :goto_1

    .line 9
    :pswitch_0
    iget-object v0, v0, Landroidx/leanback/widget/SearchBar$2;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 10
    iget-object v1, v0, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    .line 12
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 14
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 21
    iget-object v2, v0, Landroidx/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    .line 22
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 24
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    iput-object v1, v0, Landroidx/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    .line 31
    :goto_0
    return-void

    .line 33
    :goto_1
    iget-object v1, v0, Landroidx/leanback/widget/SearchBar$2;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 34
    iget-object v1, v1, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    .line 36
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 38
    iget-object v1, v0, Landroidx/leanback/widget/SearchBar$2;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 41
    iget-object v1, v1, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 45
    move-result-wide v2

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 49
    move-result-wide v4

    .line 52
    const/4 v6, 0x0

    .line 53
    iget-object v7, v0, Landroidx/leanback/widget/SearchBar$2;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 54
    iget-object v7, v7, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    .line 56
    invoke-virtual {v7}, Landroid/widget/EditText;->getWidth()I

    .line 58
    move-result v7

    .line 61
    int-to-float v7, v7

    .line 62
    iget-object v8, v0, Landroidx/leanback/widget/SearchBar$2;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 63
    iget-object v8, v8, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    .line 65
    invoke-virtual {v8}, Landroid/widget/EditText;->getHeight()I

    .line 67
    move-result v8

    .line 70
    int-to-float v8, v8

    .line 71
    const/16 v16, 0x0

    .line 72
    const/4 v9, 0x0

    .line 74
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 75
    move-result-object v2

    .line 78
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 79
    iget-object v1, v0, Landroidx/leanback/widget/SearchBar$2;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 82
    iget-object v1, v1, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 86
    move-result-wide v9

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 90
    move-result-wide v11

    .line 93
    const/4 v13, 0x1

    .line 94
    iget-object v2, v0, Landroidx/leanback/widget/SearchBar$2;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 95
    iget-object v2, v2, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    .line 97
    invoke-virtual {v2}, Landroid/widget/EditText;->getWidth()I

    .line 99
    move-result v2

    .line 102
    int-to-float v14, v2

    .line 103
    iget-object v0, v0, Landroidx/leanback/widget/SearchBar$2;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 104
    iget-object v0, v0, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    .line 106
    invoke-virtual {v0}, Landroid/widget/EditText;->getHeight()I

    .line 108
    move-result v0

    .line 111
    int-to-float v15, v0

    .line 112
    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 113
    move-result-object v0

    .line 116
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 117
    return-void

    .line 120
    nop

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 122
.end method
