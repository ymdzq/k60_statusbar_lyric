.class public Lmiuix/provision/CustomDispatchFrameLayout;
.super Landroid/widget/FrameLayout;
.source "CustomDispatchFrameLayout.java"


# instance fields
.field protected mProvisionAnimHelper:Lmiuix/provision/ProvisionAnimHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 37
    invoke-virtual {p0}, Lmiuix/provision/CustomDispatchFrameLayout;->isAnimEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "OobeUtil2"

    const-string p1, "anim not end, skip touch event"

    .line 40
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method protected isAnimEnded()Z
    .locals 0

    .line 46
    iget-object p0, p0, Lmiuix/provision/CustomDispatchFrameLayout;->mProvisionAnimHelper:Lmiuix/provision/ProvisionAnimHelper;

    if-eqz p0, :cond_0

    .line 47
    invoke-virtual {p0}, Lmiuix/provision/ProvisionAnimHelper;->isAnimEnded()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
