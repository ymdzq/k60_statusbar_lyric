.class public final Lcom/android/wm/shell/bubbles/StackEducationView$hide$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/StackEducationView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/StackEducationView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/StackEducationView$hide$1;->this$0:Lcom/android/wm/shell/bubbles/StackEducationView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/StackEducationView$hide$1;->this$0:Lcom/android/wm/shell/bubbles/StackEducationView;

    .line 2
    const/16 v0, 0x8

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    return-void
    .line 9
.end method
