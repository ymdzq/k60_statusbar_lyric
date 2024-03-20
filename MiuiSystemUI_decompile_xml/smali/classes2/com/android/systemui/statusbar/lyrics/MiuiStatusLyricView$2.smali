# classes.dex

.class Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$2;
.super Ljava/lang/Object;
.source "MiuiStatusLyricView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setAnimationText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;

.field final synthetic val$lyric:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 238
    iput-object p1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$2;->this$0:Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$2;->val$lyric:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 245
    iget-object p1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$2;->this$0:Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$2;->val$lyric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object p0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$2;->this$0:Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;

    iget-object p1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->scaleIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
