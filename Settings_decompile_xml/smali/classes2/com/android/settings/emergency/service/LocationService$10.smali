.class Lcom/android/settings/emergency/service/LocationService$10;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/emergency/service/LocationService;->startCallIntentDelay(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/emergency/service/LocationService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Lcom/android/settings/emergency/service/LocationService;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 766
    iput-object p1, p0, Lcom/android/settings/emergency/service/LocationService$10;->this$0:Lcom/android/settings/emergency/service/LocationService;

    iput-object p2, p0, Lcom/android/settings/emergency/service/LocationService$10;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/emergency/service/LocationService$10;->val$number:Ljava/lang/String;

    iput p4, p0, Lcom/android/settings/emergency/service/LocationService$10;->val$slotId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 769
    iget-object v0, p0, Lcom/android/settings/emergency/service/LocationService$10;->this$0:Lcom/android/settings/emergency/service/LocationService;

    iget-object v1, p0, Lcom/android/settings/emergency/service/LocationService$10;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/emergency/service/LocationService$10;->val$number:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/emergency/service/LocationService$10;->val$slotId:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settings/emergency/service/LocationService;->startCallIntent(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
