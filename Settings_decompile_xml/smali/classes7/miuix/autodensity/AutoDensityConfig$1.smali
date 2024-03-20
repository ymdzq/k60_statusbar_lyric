.class Lmiuix/autodensity/AutoDensityConfig$1;
.super Ljava/lang/Object;
.source "AutoDensityConfig.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/autodensity/AutoDensityConfig;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/autodensity/AutoDensityConfig;

.field final synthetic val$application:Landroid/app/Application;


# direct methods
.method constructor <init>(Lmiuix/autodensity/AutoDensityConfig;Landroid/app/Application;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lmiuix/autodensity/AutoDensityConfig$1;->this$0:Lmiuix/autodensity/AutoDensityConfig;

    iput-object p2, p0, Lmiuix/autodensity/AutoDensityConfig$1;->val$application:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lmiuix/autodensity/AutoDensityConfig$1;->this$0:Lmiuix/autodensity/AutoDensityConfig;

    iget-object p0, p0, Lmiuix/autodensity/AutoDensityConfig$1;->val$application:Landroid/app/Application;

    invoke-virtual {v0, p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->processOnAppConfigChanged(Landroid/app/Application;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 0
    return-void
.end method
