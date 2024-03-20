.class Lcom/android/settings/display/OldPaperModeFragment$2;
.super Ljava/lang/Object;
.source "OldPaperModeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/OldPaperModeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/OldPaperModeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/display/OldPaperModeFragment;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment$2;->this$0:Lcom/android/settings/display/OldPaperModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 151
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "android.settings.LOCATION_SOURCE_SETTINGS"

    .line 152
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    iget-object p0, p0, Lcom/android/settings/display/OldPaperModeFragment$2;->this$0:Lcom/android/settings/display/OldPaperModeFragment;

    invoke-static {p0}, Lcom/android/settings/display/OldPaperModeFragment;->-$$Nest$fgetmContext(Lcom/android/settings/display/OldPaperModeFragment;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    if-ne p2, p1, :cond_1

    .line 155
    iget-object p0, p0, Lcom/android/settings/display/OldPaperModeFragment$2;->this$0:Lcom/android/settings/display/OldPaperModeFragment;

    iget-object p0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mLocationGetDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
