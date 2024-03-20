.class Lcom/android/settings/settingspanel/OtherSettingPanelFragment$2;
.super Landroid/database/ContentObserver;
.source "OtherSettingPanelFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->registerMobileDataObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/settingspanel/OtherSettingPanelFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/settingspanel/OtherSettingPanelFragment;Landroid/os/Handler;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment$2;->this$0:Lcom/android/settings/settingspanel/OtherSettingPanelFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 144
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 145
    iget-object p0, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment$2;->this$0:Lcom/android/settings/settingspanel/OtherSettingPanelFragment;

    invoke-static {p0}, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->-$$Nest$msetMobileDataState(Lcom/android/settings/settingspanel/OtherSettingPanelFragment;)V

    return-void
.end method
