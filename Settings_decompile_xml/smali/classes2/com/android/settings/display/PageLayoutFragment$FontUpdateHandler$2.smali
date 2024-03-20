.class Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$2;
.super Ljava/lang/Object;
.source "PageLayoutFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler;->showNewFontList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler;

.field final synthetic val$fragment:Lcom/android/settings/display/PageLayoutFragment;


# direct methods
.method public static synthetic $r8$lambda$VBR-fZOC2QFZ6hworuiSx3DRyYo(Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$2;Lcom/android/settings/display/PageLayoutFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$2;->lambda$onAnimationEnd$0(Lcom/android/settings/display/PageLayoutFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dmpzhaG7zXseSLEGQpJSYuEWnvQ(Lcom/android/settings/display/PageLayoutFragment;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$2;->lambda$onAnimationCancel$1(Lcom/android/settings/display/PageLayoutFragment;)V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler;Lcom/android/settings/display/PageLayoutFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1081
    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$2;->this$0:Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler;

    iput-object p2, p0, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$2;->val$fragment:Lcom/android/settings/display/PageLayoutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onAnimationCancel$1(Lcom/android/settings/display/PageLayoutFragment;)V
    .locals 2

    .line 1107
    invoke-static {p0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetrecyclerView(Lcom/android/settings/display/PageLayoutFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-static {p0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetfontAdapter(Lcom/android/settings/display/PageLayoutFragment;)Lcom/android/settings/display/FontAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1108
    invoke-static {p0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetrecyclerView(Lcom/android/settings/display/PageLayoutFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0(Lcom/android/settings/display/PageLayoutFragment;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1090
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1091
    new-instance v1, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$2$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$2$1;-><init>(Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$2;Lcom/android/settings/display/PageLayoutFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1099
    invoke-static {p1}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetrecyclerView(Lcom/android/settings/display/PageLayoutFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-static {p1}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetfontAdapter(Lcom/android/settings/display/PageLayoutFragment;)Lcom/android/settings/display/FontAdapter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1100
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1105
    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$2;->val$fragment:Lcom/android/settings/display/PageLayoutFragment;

    new-instance p1, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$2$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/PageLayoutFragment;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1088
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$2;->val$fragment:Lcom/android/settings/display/PageLayoutFragment;

    new-instance v0, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$2$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$2;Lcom/android/settings/display/PageLayoutFragment;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 0
    return-void
.end method
