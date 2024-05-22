.class public final Lmiuix/preference/DropDownPreference$5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lmiuix/preference/DropDownPreference;


# direct methods
.method public constructor <init>(Lmiuix/preference/DropDownPreference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/preference/DropDownPreference$5;->this$0:Lmiuix/preference/DropDownPreference;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    if-eq v0, v1, :cond_1

    .line 10
    const/4 p0, 0x3

    .line 12
    if-eq v0, p0, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    filled-new-array {p1}, [Landroid/view/View;

    .line 16
    move-result-object p0

    .line 19
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 20
    move-result-object p0

    .line 23
    invoke-interface {p0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 24
    move-result-object p0

    .line 27
    new-array p1, v2, [Lmiuix/animation/base/AnimConfig;

    .line 28
    invoke-interface {p0, p1}, Lmiuix/animation/ITouchStyle;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    .line 30
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 34
    move-result v0

    .line 37
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 38
    move-result p2

    .line 41
    iget-object v2, p0, Lmiuix/preference/DropDownPreference$5;->this$0:Lmiuix/preference/DropDownPreference;

    .line 42
    iget-object v2, v2, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 44
    invoke-virtual {v2, p1}, Lmiuix/appcompat/widget/Spinner;->setFenceXFromView(Landroid/view/View;)V

    .line 46
    iget-object p0, p0, Lmiuix/preference/DropDownPreference$5;->this$0:Lmiuix/preference/DropDownPreference;

    .line 49
    iget-object p0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 51
    invoke-virtual {p0, v0, p2}, Lmiuix/appcompat/widget/Spinner;->performClick(FF)Z

    .line 53
    goto :goto_0

    .line 56
    :cond_2
    filled-new-array {p1}, [Landroid/view/View;

    .line 57
    move-result-object p0

    .line 60
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 61
    move-result-object p0

    .line 64
    invoke-interface {p0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 65
    move-result-object p0

    .line 68
    const/high16 p1, 0x3f800000    # 1.0f

    .line 69
    new-array p2, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 71
    invoke-interface {p0, p1, p2}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 73
    move-result-object p0

    .line 76
    new-array p1, v2, [Lmiuix/animation/base/AnimConfig;

    .line 77
    invoke-interface {p0, p1}, Lmiuix/animation/ITouchStyle;->touchDown([Lmiuix/animation/base/AnimConfig;)V

    .line 79
    :goto_0
    return v1
    .line 82
.end method
