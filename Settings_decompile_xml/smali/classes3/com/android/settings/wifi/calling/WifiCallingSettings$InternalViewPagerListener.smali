.class final Lcom/android/settings/wifi/calling/WifiCallingSettings$InternalViewPagerListener;
.super Ljava/lang/Object;
.source "WifiCallingSettings.java"

# interfaces
.implements Lcom/android/internal/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/calling/WifiCallingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalViewPagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/calling/WifiCallingSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/calling/WifiCallingSettings;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$InternalViewPagerListener;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/calling/WifiCallingSettings;Lcom/android/settings/wifi/calling/WifiCallingSettings$InternalViewPagerListener-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettings$InternalViewPagerListener;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSettings;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$InternalViewPagerListener;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->-$$Nest$mupdateTitleForCurrentSub(Lcom/android/settings/wifi/calling/WifiCallingSettings;)V

    return-void
.end method
