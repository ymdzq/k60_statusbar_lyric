.class Lcom/android/settings/bluetooth/AuracastSourceDeviceCategory$1;
.super Ljava/lang/Object;
.source "AuracastSourceDeviceCategory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/AuracastSourceDeviceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/AuracastSourceDeviceCategory;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/AuracastSourceDeviceCategory;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/settings/bluetooth/AuracastSourceDeviceCategory$1;->this$0:Lcom/android/settings/bluetooth/AuracastSourceDeviceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastSourceDeviceCategory$1;->this$0:Lcom/android/settings/bluetooth/AuracastSourceDeviceCategory;

    invoke-static {p0}, Lcom/android/settings/bluetooth/AuracastSourceDeviceCategory;->-$$Nest$mplayAnimationImmediately(Lcom/android/settings/bluetooth/AuracastSourceDeviceCategory;)V

    return-void
.end method
