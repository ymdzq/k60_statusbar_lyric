.class Lcom/android/settings/network/PrivateDnsSettingsActivity$1;
.super Ljava/lang/Object;
.source "PrivateDnsSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/PrivateDnsSettingsActivity;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/PrivateDnsSettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/network/PrivateDnsSettingsActivity;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity$1;->this$0:Lcom/android/settings/network/PrivateDnsSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 116
    iget-object p2, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity$1;->this$0:Lcom/android/settings/network/PrivateDnsSettingsActivity;

    iput v0, p2, Lcom/android/settings/network/PrivateDnsSettingsActivity;->mMode:I

    .line 117
    invoke-static {p2, p1}, Lcom/android/settings/network/PrivateDnsSettingsActivity;->-$$Nest$mshowOrHideEditText(Lcom/android/settings/network/PrivateDnsSettingsActivity;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v0, :cond_1

    .line 119
    iget-object p2, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity$1;->this$0:Lcom/android/settings/network/PrivateDnsSettingsActivity;

    iput v1, p2, Lcom/android/settings/network/PrivateDnsSettingsActivity;->mMode:I

    .line 120
    invoke-static {p2, p1}, Lcom/android/settings/network/PrivateDnsSettingsActivity;->-$$Nest$mshowOrHideEditText(Lcom/android/settings/network/PrivateDnsSettingsActivity;Z)V

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_2

    .line 122
    iget-object p1, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity$1;->this$0:Lcom/android/settings/network/PrivateDnsSettingsActivity;

    const/4 p2, 0x3

    iput p2, p1, Lcom/android/settings/network/PrivateDnsSettingsActivity;->mMode:I

    .line 123
    invoke-static {p1, v0}, Lcom/android/settings/network/PrivateDnsSettingsActivity;->-$$Nest$mshowOrHideEditText(Lcom/android/settings/network/PrivateDnsSettingsActivity;Z)V

    .line 125
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity$1;->this$0:Lcom/android/settings/network/PrivateDnsSettingsActivity;

    invoke-static {p0}, Lcom/android/settings/network/PrivateDnsSettingsActivity;->-$$Nest$mupdateDialogInfo(Lcom/android/settings/network/PrivateDnsSettingsActivity;)V

    return-void
.end method
