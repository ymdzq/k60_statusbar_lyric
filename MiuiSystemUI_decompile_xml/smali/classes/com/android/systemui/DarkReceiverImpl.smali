.class public final Lcom/android/systemui/DarkReceiverImpl;
.super Landroid/view/View;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# instance fields
.field public final dualToneHandler:Lcom/android/systemui/DualToneHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/DarkReceiverImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/DarkReceiverImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    const/16 v0, 0x8

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/DarkReceiverImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    move p3, v0

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p2, Lcom/android/systemui/DualToneHandler;

    invoke-direct {p2, p1}, Lcom/android/systemui/DualToneHandler;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/DarkReceiverImpl;->dualToneHandler:Lcom/android/systemui/DualToneHandler;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 p3, -0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/DarkReceiverImpl;->onDarkChanged(Ljava/util/ArrayList;FI)V

    return-void
.end method


# virtual methods
.method public final onDarkChanged(Ljava/util/ArrayList;FI)V
    .locals 1

    .line 1
    invoke-static {p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInAreas(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 2
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 p2, 0x0

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/DarkReceiverImpl;->dualToneHandler:Lcom/android/systemui/DualToneHandler;

    .line 10
    iget-object p3, p1, Lcom/android/systemui/DualToneHandler;->lightColor:Lcom/android/systemui/DualToneHandler$Color;

    .line 12
    const/4 v0, 0x0

    .line 14
    if-nez p3, :cond_1

    .line 15
    move-object p3, v0

    .line 17
    :cond_1
    iget p3, p3, Lcom/android/systemui/DualToneHandler$Color;->single:I

    .line 18
    iget-object p1, p1, Lcom/android/systemui/DualToneHandler;->darkColor:Lcom/android/systemui/DualToneHandler$Color;

    .line 20
    if-nez p1, :cond_2

    .line 22
    goto :goto_1

    .line 24
    :cond_2
    move-object v0, p1

    .line 25
    :goto_1
    iget p1, v0, Lcom/android/systemui/DualToneHandler$Color;->single:I

    .line 26
    invoke-static {p2, p3, p1}, Lcom/android/systemui/DualToneHandler;->getColorForDarkIntensity(FII)I

    .line 28
    move-result p1

    .line 31
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 32
    return-void
    .line 35
.end method
