.class Lcom/android/settings/stylus/MiuiStylusPen$Group;
.super Ljava/lang/Object;
.source "MiuiStylusPen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/stylus/MiuiStylusPen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Group"
.end annotation


# instance fields
.field private final mBluePoint:Landroid/view/View;

.field private final mBluePointX:F

.field private final mBluePointY:F

.field private final mText:Landroid/view/View;

.field private final mTextX:F

.field private final mTextY:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmBluePoint(Lcom/android/settings/stylus/MiuiStylusPen$Group;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusPen$Group;->mBluePoint:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmText(Lcom/android/settings/stylus/MiuiStylusPen$Group;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusPen$Group;->mText:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhide(Lcom/android/settings/stylus/MiuiStylusPen$Group;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiStylusPen$Group;->hide()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshow(Lcom/android/settings/stylus/MiuiStylusPen$Group;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiStylusPen$Group;->show()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNewPosition(Lcom/android/settings/stylus/MiuiStylusPen$Group;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/stylus/MiuiStylusPen$Group;->updateNewPosition(II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;FFFF)V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/android/settings/stylus/MiuiStylusPen$Group;->mText:Landroid/view/View;

    .line 163
    iput-object p2, p0, Lcom/android/settings/stylus/MiuiStylusPen$Group;->mBluePoint:Landroid/view/View;

    .line 164
    iput p3, p0, Lcom/android/settings/stylus/MiuiStylusPen$Group;->mTextX:F

    .line 165
    iput p4, p0, Lcom/android/settings/stylus/MiuiStylusPen$Group;->mTextY:F

    .line 166
    iput p5, p0, Lcom/android/settings/stylus/MiuiStylusPen$Group;->mBluePointX:F

    .line 167
    iput p6, p0, Lcom/android/settings/stylus/MiuiStylusPen$Group;->mBluePointY:F

    return-void
.end method

.method private hide()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusPen$Group;->mBluePoint:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 172
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusPen$Group;->mText:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 173
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x64

    .line 174
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private show()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusPen$Group;->mBluePoint:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 179
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusPen$Group;->mText:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 180
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x64

    .line 181
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private updateNewPosition(II)V
    .locals 5

    int-to-float p1, p1

    .line 185
    iget v0, p0, Lcom/android/settings/stylus/MiuiStylusPen$Group;->mTextX:F

    mul-float/2addr v0, p1

    int-to-float p2, p2

    .line 186
    iget v1, p0, Lcom/android/settings/stylus/MiuiStylusPen$Group;->mTextY:F

    mul-float/2addr v1, p2

    .line 187
    iget v2, p0, Lcom/android/settings/stylus/MiuiStylusPen$Group;->mBluePointX:F

    mul-float/2addr p1, v2

    .line 188
    iget v2, p0, Lcom/android/settings/stylus/MiuiStylusPen$Group;->mBluePointY:F

    mul-float/2addr p2, v2

    .line 189
    iget-object v2, p0, Lcom/android/settings/stylus/MiuiStylusPen$Group;->mText:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/view/View;->setX(F)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusPen$Group;->mText:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusPen$Group;->mBluePoint:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    sub-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    .line 192
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusPen$Group;->mBluePoint:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v4

    sub-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/view/View;->setY(F)V

    return-void
.end method
