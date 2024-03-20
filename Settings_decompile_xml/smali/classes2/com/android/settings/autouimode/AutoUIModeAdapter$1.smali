.class Lcom/android/settings/autouimode/AutoUIModeAdapter$1;
.super Ljava/lang/Object;
.source "AutoUIModeAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/autouimode/AutoUIModeAdapter;->onBindViewHolder(Lcom/android/settings/autouimode/AutoUIModeAdapter$AutoUIModeHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/autouimode/AutoUIModeAdapter;

.field final synthetic val$holder:Lcom/android/settings/autouimode/AutoUIModeAdapter$AutoUIModeHolder;


# direct methods
.method constructor <init>(Lcom/android/settings/autouimode/AutoUIModeAdapter;Lcom/android/settings/autouimode/AutoUIModeAdapter$AutoUIModeHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/android/settings/autouimode/AutoUIModeAdapter$1;->this$0:Lcom/android/settings/autouimode/AutoUIModeAdapter;

    iput-object p2, p0, Lcom/android/settings/autouimode/AutoUIModeAdapter$1;->val$holder:Lcom/android/settings/autouimode/AutoUIModeAdapter$AutoUIModeHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 89
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_1

    const/4 p0, 0x3

    if-eq p2, p0, :cond_0

    const/16 p0, 0xb

    if-eq p2, p0, :cond_2

    goto :goto_0

    .line 99
    :cond_0
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p0

    new-array p1, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p0, p1}, Lmiuix/animation/ITouchStyle;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    goto :goto_0

    .line 95
    :cond_1
    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIModeAdapter$1;->val$holder:Lcom/android/settings/autouimode/AutoUIModeAdapter$AutoUIModeHolder;

    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIModeAdapter$AutoUIModeHolder;->switcher:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButton;->performClick()Z

    .line 96
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p0

    new-array p1, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p0, p1}, Lmiuix/animation/ITouchStyle;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    goto :goto_0

    .line 92
    :cond_2
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    new-array p2, v1, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {p0, p1, p2}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p0

    new-array p1, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p0, p1}, Lmiuix/animation/ITouchStyle;->touchDown([Lmiuix/animation/base/AnimConfig;)V

    :goto_0
    return v0
.end method
