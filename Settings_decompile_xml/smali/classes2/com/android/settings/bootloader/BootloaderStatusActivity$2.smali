.class Lcom/android/settings/bootloader/BootloaderStatusActivity$2;
.super Ljava/lang/Object;
.source "BootloaderStatusActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bootloader/BootloaderStatusActivity;->showPrivacyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bootloader/BootloaderStatusActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bootloader/BootloaderStatusActivity;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/settings/bootloader/BootloaderStatusActivity$2;->this$0:Lcom/android/settings/bootloader/BootloaderStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/android/settings/bootloader/BootloaderStatusActivity$2;->this$0:Lcom/android/settings/bootloader/BootloaderStatusActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
