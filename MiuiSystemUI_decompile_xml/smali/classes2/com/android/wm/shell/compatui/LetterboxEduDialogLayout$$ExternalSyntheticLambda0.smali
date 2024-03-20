.class public final synthetic Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/LetterboxEduWindowManager$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    .line 2
    sget p1, Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;->$r8$clinit:I

    .line 4
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 6
    return-void
    .line 9
.end method
