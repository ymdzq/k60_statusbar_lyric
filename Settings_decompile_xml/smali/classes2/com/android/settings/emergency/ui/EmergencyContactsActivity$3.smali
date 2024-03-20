.class Lcom/android/settings/emergency/ui/EmergencyContactsActivity$3;
.super Ljava/lang/Object;
.source "EmergencyContactsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->showAddContactsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/emergency/ui/EmergencyContactsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/emergency/ui/EmergencyContactsActivity;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity$3;->this$0:Lcom/android/settings/emergency/ui/EmergencyContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 438
    iget-object p0, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity$3;->this$0:Lcom/android/settings/emergency/ui/EmergencyContactsActivity;

    invoke-virtual {p0}, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->pickFromContacts()V

    return-void
.end method
