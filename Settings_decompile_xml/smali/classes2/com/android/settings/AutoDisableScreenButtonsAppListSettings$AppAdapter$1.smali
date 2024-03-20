.class Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$1;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsAppListSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$1;->this$1:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 401
    sget v0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->TAG_APP_ITEM:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;

    .line 402
    iget-object p0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$1;->this$1:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;

    invoke-virtual {p0, p1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;->showDialog(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;)V

    return-void
.end method
