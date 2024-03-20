.class public final Lcom/google/android/setupdesign/view/TouchableMovementMethod$TouchableLinkMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/google/android/setupdesign/view/TouchableMovementMethod;


# instance fields
.field public lastEvent:Landroid/view/MotionEvent;

.field public lastEventResult:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/setupdesign/view/TouchableMovementMethod$TouchableLinkMovementMethod;->lastEventResult:Z

    .line 6
    return-void
    .line 8
.end method


# virtual methods
.method public final onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/setupdesign/view/TouchableMovementMethod$TouchableLinkMovementMethod;->lastEvent:Landroid/view/MotionEvent;

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    .line 4
    move-result p1

    .line 7
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    .line 8
    move-result p3

    .line 11
    if-nez p3, :cond_1

    .line 12
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 14
    move-result p2

    .line 17
    const/4 p3, -0x1

    .line 18
    if-eq p2, p3, :cond_0

    .line 19
    const/4 p2, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p2, 0x0

    .line 23
    :goto_0
    iput-boolean p2, p0, Lcom/google/android/setupdesign/view/TouchableMovementMethod$TouchableLinkMovementMethod;->lastEventResult:Z

    .line 24
    goto :goto_1

    .line 26
    :cond_1
    iput-boolean p1, p0, Lcom/google/android/setupdesign/view/TouchableMovementMethod$TouchableLinkMovementMethod;->lastEventResult:Z

    .line 27
    :goto_1
    return p1
    .line 29
.end method
