.class public final synthetic Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    .line 5
    iput p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda4;->f$1:F

    .line 7
    iput p3, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda4;->f$2:F

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    .line 2
    iget p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda4;->f$1:F

    .line 4
    iget p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda4;->f$2:F

    .line 6
    iget-object v0, p1, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 8
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 10
    int-to-float v1, v1

    .line 12
    add-float/2addr v1, p2

    .line 13
    float-to-int p2, v1

    .line 14
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 15
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 17
    int-to-float v1, v1

    .line 19
    add-float/2addr v1, p0

    .line 20
    float-to-int p0, v1

    .line 21
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 22
    iget-boolean p0, p1, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mIsVisible:Z

    .line 24
    if-eqz p0, :cond_0

    .line 26
    iget-object p0, p1, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mDraggableWindowBounds:Landroid/graphics/Rect;

    .line 28
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 30
    iget p0, p0, Landroid/graphics/Rect;->right:I

    .line 32
    invoke-static {p2, v1, p0}, Landroid/util/MathUtils;->constrain(III)I

    .line 34
    move-result p0

    .line 37
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 38
    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 40
    iget-object p2, p1, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mDraggableWindowBounds:Landroid/graphics/Rect;

    .line 42
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 44
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 46
    invoke-static {p0, v1, p2}, Landroid/util/MathUtils;->constrain(III)I

    .line 48
    move-result p0

    .line 51
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 52
    iget-object p0, p1, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    .line 54
    iget-object p1, p1, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mWindowManager:Landroid/view/WindowManager;

    .line 56
    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    :cond_0
    return-void
    .line 61
.end method
