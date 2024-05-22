.class Lcom/miui/maml/NotifierManager$DarkModeNotifier$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/NotifierManager$DarkModeNotifier;


# direct methods
.method public constructor <init>(Lcom/miui/maml/NotifierManager$DarkModeNotifier;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier$3;->this$0:Lcom/miui/maml/NotifierManager$DarkModeNotifier;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier$3;->this$0:Lcom/miui/maml/NotifierManager$DarkModeNotifier;

    .line 2
    invoke-static {v0, p1}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->access$500(Lcom/miui/maml/NotifierManager$DarkModeNotifier;Landroid/content/res/Configuration;)V

    .line 4
    iget-object p0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier$3;->this$0:Lcom/miui/maml/NotifierManager$DarkModeNotifier;

    .line 7
    invoke-static {p0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->access$300(Lcom/miui/maml/NotifierManager$DarkModeNotifier;)V

    .line 9
    return-void
    .line 12
.end method

.method public onLowMemory()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onTrimMemory(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
