.class public final Lcom/android/systemui/volume/CaptionsToggleImageButton$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/CaptionsToggleImageButton;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/CaptionsToggleImageButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/CaptionsToggleImageButton$1;->this$0:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    .line 2
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/CaptionsToggleImageButton$1;->this$0:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    .line 2
    sget p1, Lcom/android/systemui/volume/CaptionsToggleImageButton;->$r8$clinit:I

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/volume/CaptionsToggleImageButton;->tryToSendTapConfirmedEvent()Z

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method
