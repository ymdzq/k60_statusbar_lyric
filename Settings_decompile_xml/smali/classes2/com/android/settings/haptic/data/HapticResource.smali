.class public Lcom/android/settings/haptic/data/HapticResource;
.super Ljava/lang/Object;
.source "HapticResource.java"


# instance fields
.field private contentDescription:I

.field private showRes:I

.field private showType:I

.field private subTitleRes:I

.field private videoBgRes:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/android/settings/haptic/data/HapticResource;->showRes:I

    .line 17
    iput p2, p0, Lcom/android/settings/haptic/data/HapticResource;->subTitleRes:I

    .line 18
    iput p3, p0, Lcom/android/settings/haptic/data/HapticResource;->videoBgRes:I

    .line 19
    iput p4, p0, Lcom/android/settings/haptic/data/HapticResource;->contentDescription:I

    .line 20
    iput p5, p0, Lcom/android/settings/haptic/data/HapticResource;->showType:I

    return-void
.end method


# virtual methods
.method public getContentDescription()I
    .locals 0

    .line 36
    iget p0, p0, Lcom/android/settings/haptic/data/HapticResource;->contentDescription:I

    return p0
.end method

.method public getShowRes()I
    .locals 0

    .line 24
    iget p0, p0, Lcom/android/settings/haptic/data/HapticResource;->showRes:I

    return p0
.end method

.method public getSubTitleRes()I
    .locals 0

    .line 28
    iget p0, p0, Lcom/android/settings/haptic/data/HapticResource;->subTitleRes:I

    return p0
.end method

.method public getVideoBgRes()I
    .locals 0

    .line 32
    iget p0, p0, Lcom/android/settings/haptic/data/HapticResource;->videoBgRes:I

    return p0
.end method
