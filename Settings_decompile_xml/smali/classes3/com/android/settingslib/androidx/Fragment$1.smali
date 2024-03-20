.class Lcom/android/settingslib/androidx/Fragment$1;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/androidx/Fragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/androidx/Fragment;


# direct methods
.method constructor <init>(Lcom/android/settingslib/androidx/Fragment;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/android/settingslib/androidx/Fragment$1;->this$0:Lcom/android/settingslib/androidx/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settingslib/androidx/Fragment$1;->this$0:Lcom/android/settingslib/androidx/Fragment;

    iget-object p0, p0, Lcom/android/settingslib/androidx/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method
