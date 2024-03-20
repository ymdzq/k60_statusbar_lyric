.class Lcom/android/settings/applicationmode/AppControlAdapter$3;
.super Ljava/lang/Object;
.source "AppControlAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applicationmode/AppControlAdapter;->onBindViewHolder(Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applicationmode/AppControlAdapter;

.field final synthetic val$holder:Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;


# direct methods
.method constructor <init>(Lcom/android/settings/applicationmode/AppControlAdapter;Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/android/settings/applicationmode/AppControlAdapter$3;->this$0:Lcom/android/settings/applicationmode/AppControlAdapter;

    iput-object p2, p0, Lcom/android/settings/applicationmode/AppControlAdapter$3;->val$holder:Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 158
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 p0, 0x3

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p0

    new-array p1, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p0, p1}, Lmiuix/animation/ITouchStyle;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 164
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .line 165
    iget-object p0, p0, Lcom/android/settings/applicationmode/AppControlAdapter$3;->val$holder:Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;

    iget-object p0, p0, Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;->spinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/widget/Spinner;->performClick(FF)Z

    goto :goto_0

    .line 160
    :cond_2
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    new-array p2, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {p0, p1, p2}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p0

    new-array p1, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p0, p1}, Lmiuix/animation/ITouchStyle;->touchDown([Lmiuix/animation/base/AnimConfig;)V

    :goto_0
    return v1
.end method
