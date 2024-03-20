.class Lcom/android/settings/dndmode/RepeatPreference$2;
.super Ljava/lang/Object;
.source "RepeatPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dndmode/RepeatPreference;->showMultiChoiceDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dndmode/RepeatPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/dndmode/RepeatPreference;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/android/settings/dndmode/RepeatPreference$2;->this$0:Lcom/android/settings/dndmode/RepeatPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 154
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 155
    iget-object p0, p0, Lcom/android/settings/dndmode/RepeatPreference$2;->this$0:Lcom/android/settings/dndmode/RepeatPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/dndmode/RepeatPreference;->onDialogClosed(Z)V

    return-void
.end method
