.class public Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "DndConditionCardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "android.app.action.INTERRUPTION_FILTER_CHANGED_INTERNAL"

    .line 111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 112
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;

    invoke-static {p0}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->-$$Nest$fgetmConditionManager(Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;)Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->onConditionChanged()V

    :cond_0
    return-void
.end method
