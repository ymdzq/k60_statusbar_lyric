.class public final Lcom/android/wm/shell/back/CustomizeActivityAnimation$1;
.super Landroid/util/FloatProperty;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "enter"

    .line 2
    invoke-direct {p0, v0}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    .line 2
    iget p0, p1, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mLatestProgress:F

    .line 4
    const/high16 p1, 0x447a0000    # 1000.0f

    .line 6
    mul-float/2addr p0, p1

    .line 8
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 9
    move-result-object p0

    .line 12
    return-object p0
    .line 13
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    .line 2
    const/high16 p0, 0x447a0000    # 1000.0f

    .line 4
    div-float/2addr p2, p0

    .line 6
    iput p2, p1, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mLatestProgress:F

    .line 7
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->applyTransformTransaction(F)V

    .line 9
    return-void
    .line 12
.end method
