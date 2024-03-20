.class public final Lmiuix/androidbasewidget/widget/SeekBar$1$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$1:Lmiuix/androidbasewidget/widget/SeekBar$1;


# direct methods
.method public constructor <init>(Lmiuix/androidbasewidget/widget/SeekBar$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/SeekBar$1$1;->this$1:Lmiuix/androidbasewidget/widget/SeekBar$1;

    .line 2
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0

    .line 1
    const-string p1, "targe"

    .line 2
    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 4
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 10
    move-result p1

    .line 13
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1$1;->this$1:Lmiuix/androidbasewidget/widget/SeekBar$1;

    .line 14
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 18
    :cond_0
    return-void
    .line 21
.end method
