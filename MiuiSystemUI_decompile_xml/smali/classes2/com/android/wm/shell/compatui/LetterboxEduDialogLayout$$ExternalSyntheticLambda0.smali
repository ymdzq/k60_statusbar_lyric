.class public final synthetic Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
