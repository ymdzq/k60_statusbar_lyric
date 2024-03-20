.class Lcom/android/settings/bootloader/BootloaderStatusActivity$1;
.super Ljava/lang/Object;
.source "BootloaderStatusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bootloader/BootloaderStatusActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 76
    iput-object p1, p0, Lcom/android/settings/bootloader/BootloaderStatusActivity$1;->this$0:Lcom/android/settings/bootloader/BootloaderStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/settings/bootloader/BootloaderStatusActivity$1;->this$0:Lcom/android/settings/bootloader/BootloaderStatusActivity;

    invoke-static {p0}, Lcom/android/settings/bootloader/BootloaderStatusActivity;->-$$Nest$mbindAccountWithDevice(Lcom/android/settings/bootloader/BootloaderStatusActivity;)V

    return-void
.end method
