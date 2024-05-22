.class public final synthetic Lcom/android/keyguard/WallpaperProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/WallpaperProvider$$ExternalSyntheticLambda1;->f$0:Landroid/content/Intent;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/WallpaperProvider$$ExternalSyntheticLambda1;->f$0:Landroid/content/Intent;

    .line 2
    sget v0, Lcom/android/keyguard/WallpaperProvider;->$r8$clinit:I

    .line 4
    :try_start_0
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 6
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 12
    const/4 v1, 0x1

    .line 14
    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    const-string v1, "call METHOD_OPEN_SMART_HOME"

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    const-string v1, "WallpaperProvider"

    .line 27
    invoke-static {p0, v0, v1}, Lcom/android/keyguard/WallpaperProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 29
    :goto_0
    return-void
    .line 32
.end method
