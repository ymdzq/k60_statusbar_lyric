.class Lcom/android/settings/stylus/MiuiStylusPen$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiuiStylusPen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/stylus/MiuiStylusPen;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/stylus/MiuiStylusPen;


# direct methods
.method constructor <init>(Lcom/android/settings/stylus/MiuiStylusPen;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/settings/stylus/MiuiStylusPen$2;->this$0:Lcom/android/settings/stylus/MiuiStylusPen;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/android/settings/stylus/MiuiStylusPen$2;->this$0:Lcom/android/settings/stylus/MiuiStylusPen;

    invoke-static {p1}, Lcom/android/settings/stylus/MiuiStylusPen;->-$$Nest$fgetmTimer(Lcom/android/settings/stylus/MiuiStylusPen;)I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    .line 98
    iget-object p1, p0, Lcom/android/settings/stylus/MiuiStylusPen$2;->this$0:Lcom/android/settings/stylus/MiuiStylusPen;

    invoke-static {p1}, Lcom/android/settings/stylus/MiuiStylusPen;->-$$Nest$mchangeCurrentGroup(Lcom/android/settings/stylus/MiuiStylusPen;)V

    .line 99
    iget-object p1, p0, Lcom/android/settings/stylus/MiuiStylusPen$2;->this$0:Lcom/android/settings/stylus/MiuiStylusPen;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/stylus/MiuiStylusPen;->-$$Nest$fputmTimer(Lcom/android/settings/stylus/MiuiStylusPen;I)V

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/android/settings/stylus/MiuiStylusPen$2;->this$0:Lcom/android/settings/stylus/MiuiStylusPen;

    invoke-static {p1}, Lcom/android/settings/stylus/MiuiStylusPen;->-$$Nest$fgetmTimer(Lcom/android/settings/stylus/MiuiStylusPen;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/stylus/MiuiStylusPen;->-$$Nest$fputmTimer(Lcom/android/settings/stylus/MiuiStylusPen;I)V

    .line 102
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusPen$2;->this$0:Lcom/android/settings/stylus/MiuiStylusPen;

    invoke-static {p0}, Lcom/android/settings/stylus/MiuiStylusPen;->-$$Nest$mshow(Lcom/android/settings/stylus/MiuiStylusPen;)V

    return-void
.end method
