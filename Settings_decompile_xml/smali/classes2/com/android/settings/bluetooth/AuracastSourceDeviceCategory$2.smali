.class Lcom/android/settings/bluetooth/AuracastSourceDeviceCategory$2;
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

    .line 49
    iput-object p1, p0, Lcom/android/settings/bluetooth/AuracastSourceDeviceCategory$2;->this$0:Lcom/android/settings/bluetooth/AuracastSourceDeviceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastSourceDeviceCategory$2;->this$0:Lcom/android/settings/bluetooth/AuracastSourceDeviceCategory;

    invoke-static {p0}, Lcom/android/settings/bluetooth/AuracastSourceDeviceCategory;->-$$Nest$mstopAnimationImmediately(Lcom/android/settings/bluetooth/AuracastSourceDeviceCategory;)V

    return-void
.end method
