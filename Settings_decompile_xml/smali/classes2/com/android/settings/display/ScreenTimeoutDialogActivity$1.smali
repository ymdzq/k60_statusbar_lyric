.class Lcom/android/settings/display/ScreenTimeoutDialogActivity$1;
.super Ljava/lang/Object;
.source "ScreenTimeoutDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/ScreenTimeoutDialogActivity;->createTimeOutDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/ScreenTimeoutDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity$1;->this$0:Lcom/android/settings/display/ScreenTimeoutDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity$1;->this$0:Lcom/android/settings/display/ScreenTimeoutDialogActivity;

    invoke-static {v0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->-$$Nest$fgetmEntryValues(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    if-ltz p2, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity$1;->this$0:Lcom/android/settings/display/ScreenTimeoutDialogActivity;

    invoke-static {v0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->-$$Nest$fgetmEntryValues(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity$1;->this$0:Lcom/android/settings/display/ScreenTimeoutDialogActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_off_timeout"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :catch_0
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 99
    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity$1;->this$0:Lcom/android/settings/display/ScreenTimeoutDialogActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
