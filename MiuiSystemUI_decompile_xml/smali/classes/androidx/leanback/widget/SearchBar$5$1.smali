.class public final Landroidx/leanback/widget/SearchBar$5$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Landroidx/leanback/widget/SearchBar$5;


# direct methods
.method public synthetic constructor <init>(Landroidx/leanback/widget/SearchBar$5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/SearchBar$5$1;->this$1:Landroidx/leanback/widget/SearchBar$5;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar$5$1;->this$1:Landroidx/leanback/widget/SearchBar$5;

    .line 2
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar$5;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 4
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/leanback/widget/SearchBar;->mAutoStartRecognition:Z

    .line 7
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar;->mSpeechOrbView:Landroidx/leanback/widget/SpeechOrbView;

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 11
    return-void
    .line 14
.end method
