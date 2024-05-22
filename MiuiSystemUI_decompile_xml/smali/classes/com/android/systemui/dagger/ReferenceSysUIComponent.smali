.class public interface abstract Lcom/android/systemui/dagger/ReferenceSysUIComponent;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/dagger/SysUIComponent;


# virtual methods
.method public abstract getMiuiBiometricsDependencyComponent()Lcom/miui/keyguard/biometrics/dagger/MiuiBiometricsDependencyComponent$Builder;
.end method

.method public abstract getMiuiChargeDependencyComponent()Lcom/miui/charge/dagger/MiuiChargeDependencyComponent$Builder;
.end method

.method public abstract getMiuiComponent()Lcom/miui/systemui/dagger/MiuiComponent$Builder;
.end method

.method public abstract synthetic inject(Lcom/android/keyguard/clock/ClockOptionsProvider;)V
.end method

.method public abstract synthetic inject(Lcom/android/systemui/SystemUIAppComponentFactoryBase;)V
.end method

.method public abstract inject(Lcom/android/systemui/keyguard/CustomizationProvider;)V
.end method

.method public abstract synthetic inject(Lcom/android/systemui/keyguard/KeyguardSliceProvider;)V
.end method

.method public abstract synthetic inject(Lcom/android/systemui/people/PeopleProvider;)V
.end method

.method public abstract inject(Lmiui/stub/MiuiStub$BaseProvider;)V
.end method

.method public abstract inject(Lmiui/stub/MiuiStub$MiuiModuleProvider;)V
.end method

.method public abstract inject(Lmiui/stub/MiuiStub$SysUIProvider;)V
.end method
